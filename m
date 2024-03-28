Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF91D13BC11
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711643897; cv=none; b=FUAGPvsWEhL1kLM4U7DvDW2bSVTxjCJ8m6yDEZcEz+sEPCKsqlTtGfwBqbifA5OrV9y8Zz/WJ5oyWFnWFdwHrabf6drnwq0wJ6IA7FluGF2Y9uuuiXSDqxsIH+qFqVHa7EmrlwpcBvn18N2atkt0tdJLH4kU4crHHuySWu6tz3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711643897; c=relaxed/simple;
	bh=WrP3HqeUopb1PN2EgqhgiHw88/5RAtL8g4+wAI6DfRM=;
	h=To:Subject:From:Message-Id:Date; b=M4h6HH5r4FOHpkMc34HKP+p2HgF4sHsxvfA7MBg5MPtzb/jRSGmfjxhDxvRqSn9q7lNtog8JViL+KUF0fsjVh3lqnQ0ZY8l0G9p+Cy4+8p89HrZOkkXSOpZsG85J4bUT7g7kiVXc/A3KkNxeYqj7R4EHt6zjxfnDS6TLJKGO9Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad1LrMMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad1LrMMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8E3C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711643896;
	bh=WrP3HqeUopb1PN2EgqhgiHw88/5RAtL8g4+wAI6DfRM=;
	h=To:Subject:From:Date:From;
	b=ad1LrMMPntk+POvC3yCxRaXVvYo6xy11EnhxtGvBBjWsarThZDYTSTBD7SYxY2UvC
	 GJ9hxcTVr5mqfoUGJ0vlLz9vofW2TXtwucYbDicLzWzJ6NNK2TOigTt0/pyyCZF5Is
	 Jt3v1OycQaCwnCoivWDY5w/iE15cPoZYcWFo71yz1ijNiQMM3ij5/bQKWOsdZpXhE5
	 si0ILvE2b7vJYlhF745MLVcVGTJ9UPGa5PvpBiaNI/qna3Aaiv/EaazWeK9fELB9zV
	 7qwE0Ryg61OMgK4Rg80rTrmMPkG42uivGHPJDQpEUyaHLeEgPW/AIpYqpCS9c7L65f
	 rwXlHenRYMZwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D20CD1284
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171164389640.28792.10077216434675237067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68c85de6732c31d35f9b0ea9391dee1ed071ca1bf80a57396a3338754d268bd
Date: Thu, 28 Mar 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711643896
