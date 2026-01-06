Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7975728D8E8
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767725634; cv=none; b=R3Y4qVEU1zwKQmtBc1FChRx+Yut4IhpvbfDMPLkfsg6KSuIqtqb9cSUgpAy24sGStJSVZ0z9Dm9YNtB/vy39mhwT3MXNVukwaE3DsH3c8tTyGmyN3bAL6J54GDdwuoiYiHbUgPkoeKJ5PO3wdijuZGtrELzLC4P3Vfotgil3G9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767725634; c=relaxed/simple;
	bh=+8l+Hckq0BGdZj3pZEASc0mRAxd8eEz0nyPX6zHaPHQ=;
	h=To:Subject:From:Message-Id:Date; b=lo2g5Ye/Felc6kQci0Ir6oWpbTMPUhTFW/b33mDVRtwvMdlENDJUjD8oba4Sefgr+0bY+KpHifh7T58ulKiWw7FKG17WQHLV3hPWZhmTvV0hzUCahr3nsn/QW7Z/zu2izE25Ai2sFgAmJMji+SinVE8wgKGkKEkixlMUtIY7H7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gv5BouhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gv5BouhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EBFC19424
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767725633;
	bh=+8l+Hckq0BGdZj3pZEASc0mRAxd8eEz0nyPX6zHaPHQ=;
	h=To:Subject:From:Date:From;
	b=Gv5BouhBtrjQVIPUadvIr0AwsPebCQe30A0692zA6MFuklM4+EkYOyBbUCixYn8Tg
	 9FowlksWziJqrW6G8K7qKO0CHYqFCfDg3PcKKI0kPmfXyRG7a7HxGvyxQsZM5pfeNn
	 IQJjeaYRXzzpl4SxSil552NJxmgACeUOhmf7T8e+l5E7QuPwROL9HF6JtEzExLqqXh
	 gwoErYlsmKAdNAXf97o1rkHfFXGGtNwHAPdrdu/JgNsxkY06/4uRClbdLKPFibv1OK
	 ifZXHej6B30QdDtUhmi2iCvIl/HYI90YwRRSpERpysF3qPNP6WGJA/gXrifcVstWf9
	 ZvYeFRaT578rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC3CEFCF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772563358.15291.15559820958394523865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5020fd2dbab7620db755ba56140119275e64282e6a64d47853305cd41485608e
Date: Tue, 06 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767725633
