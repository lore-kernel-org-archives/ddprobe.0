Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E48743F4B5
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784022514; cv=none; b=o4toOc4q/CaYAQ6WZf51NSe7dNg1f3lwAZEMORPHz4fBg3ohg6JMvqcaZfuvV8WkH8MgllYukZSQgAv9cYAJRfQXFDnVKqHPWadMRujaLk9pqlB9TTDPa1OmTp3xvciM/4qwBLEyu4tJs2yHRrZZEfD7U86Ku6aWLICQdZxc5xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784022514; c=relaxed/simple;
	bh=yom+/GUZUjOC2zopW2rL+aKpjujvJ7Qw4kHun+g1rVk=;
	h=To:Subject:From:Message-Id:Date; b=L7hJKAbnE9H3gffUuHFn57CdWJAU0TbzPySi8XrI1er3SBQA7HZfNZGwr0BPJqQ1+bSzGOTtqwYECAQFD4eb/2ImvBYTGR53ZE9lYLMCuoBt79K6IxB7FOeBc8NrBOYIRbW361Zw/Lht74Y6dH6S/6eNO9CoqFken9fVzIX/oWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIBB+wis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIBB+wis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C65C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784022513;
	bh=yom+/GUZUjOC2zopW2rL+aKpjujvJ7Qw4kHun+g1rVk=;
	h=To:Subject:From:Date:From;
	b=IIBB+wisrDwOZ83MeMBq7nL0tdUfs5VXoyx2Phd75iJZ5DHTxZQ71gA1/45grgu/a
	 P5Usny3vvOYJ/NrlSvtP+v2+kWm/asKBR2MIEeycFZ4TawBbH+IyY302DDf0TYgkF1
	 eq6NyTM6CEGLPCYYETJ1wuDx6/xmblOVPbSyAYhKeiqfaFgJ0V3ipOfLNThFnvi1Hd
	 cco/eVKMoR0Uh15PpnTvINOvz6vljUT8InxHHCfmXuuou4b2e//F7iqJJvXb2VKc72
	 YemT4nZQ20pFxDFEf2lXIVY1c7vk9vOvBdiCOjfVI7eZKIlMMjekJavF2gDV0Ua88X
	 gPzO926QwVBvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9C2C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402251368.30317.5019301820803862760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4949721c181033a4dbd5ac052640249ce01c3dbb7c5ba6ce9ccb7434c54239
Date: Tue, 14 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784022513
