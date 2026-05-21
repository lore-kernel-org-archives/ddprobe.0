Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7382417D1
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779324034; cv=none; b=ULQ+HIvYnf15nLodTBhQMzIzkflkS6uKWN4EEryATzfeCOHNxKeYRa8AsLfakvW15q4Txr9zfWeHh0nBR/7OGP6omGSs20cpxHKuyl5KILbT/Gk4IvcvZHNRMJDvLBWiy1GZcOiZJdgL+MmYFrQOGBgZ6KVy03d9eAtvyJUfHTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779324034; c=relaxed/simple;
	bh=XbWGeTbVuxVu9XPdQwlk8/BneOVYzaFh0ful0+YzJPs=;
	h=To:Subject:From:Message-Id:Date; b=VKvx+Lylv+MDFycq1xf1WNT/LUT52eecNW/Qv08PWMk4DA3be0s8cHEUIN6fxmSI9hxSGd09VBes2a73WaYw40mlA+Y2dr+l6mqYGVRjeWklEnK5DTuUNOF6sIuKZJWj59nl5ZGCpZ2qWJh4Eh8tDl2EIKl5aw4QKBxTmLjQjHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtILi5rX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtILi5rX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EB3C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779324033;
	bh=XbWGeTbVuxVu9XPdQwlk8/BneOVYzaFh0ful0+YzJPs=;
	h=To:Subject:From:Date:From;
	b=XtILi5rX8selYxp3Ps5A+v/E4PBewWWU0Tz9A186UQXKw0vaNk94+3iTCq8STLT4Y
	 ieHS3mI+klPmC+QUrj0IvfxYUAElFVbfGkbQHS3ai6RyO+ljIHBt3CCKkOiL7SPywO
	 5Eep7eKa6MxbnCnP+uB6W/UIymopKapN4JX57LIXoX5StBG8Zpg6cnn/DP070qV1fY
	 T1OCUWjrJPPvNJp9CKiOZgbUFGT4kuKWk+6KOE3Dl0DuE3NBJRqYvs/or8tYIBF2tu
	 KyXI5Tyzgx2RZe2i3pP/GiFMlvRVg6kkLO1XXCSwfEFrcvnYluwOVQDm85yAfFHbaf
	 IpR0tKfQMExCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDE5CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932403370.4699.8138931493346096170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775994d48a06baf18d81bb73641a364db93080700d1519826c70643de4069c40
Date: Thu, 21 May 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779324033
