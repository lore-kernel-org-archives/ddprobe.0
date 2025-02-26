Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECC022FDE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740549534; cv=none; b=UEJ/JaxIWuq0vSWTOAS+t/bAS1h1OKRUky4M7mfzgoSgpEPw5AZzU6vJnqWHnED06UaAiHU1TgcEP/ymHJZRGiAfiJfu9G/ecBZGN9DvgK34sugsbx3U4yJRDQi/Tn9obzmW/N3DL3OOOmt1lpIt+Zr669vUBbzUay7QTF7Genc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740549534; c=relaxed/simple;
	bh=DU5yniG0bMS5puEwlv/olq+sgH+aPhdfsKtcSfT1dXU=;
	h=To:Subject:From:Message-Id:Date; b=l8rdi5jl0VdK5WItRGHA08XscHDBDcrqE3WaR45pMqviDpQPIj7uc2Ftt6kTeLutp+QfD9raq7BbgNHLLqaHZyUJAFRgiAoFT+yitMg3eGzq/6Fy/fZBwKL5gby5VJ3sDamomx7Js0uCOANRbLLKRLvvVfI3JR9LE87duE3I8tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWHSOx8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWHSOx8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA60C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740549533;
	bh=DU5yniG0bMS5puEwlv/olq+sgH+aPhdfsKtcSfT1dXU=;
	h=To:Subject:From:Date:From;
	b=DWHSOx8DlcaJVrR2hAX6O3kEuuwP82qM/TSvs1Ko8XtIwvE9Wpi4hCcpC36zpssyG
	 wxQcCW/eLCYHAfG9m3JlLFJ0XaL/W11s0qq8rwnLlnVzlel/A+r0Qf6R+mZqph/iiW
	 L80L4dU8UwjG9uZy7IxRfVP3qaVmOq9eXFjrmTZiIU5sj7XgCfNyzQYciA4Dt0sr0c
	 WQuy1LBkMmGuiDnrv9c1QKEp6UZF1UckP42I4SkqTRY3WGMqbUyRkqKcgpYaHjMaqG
	 YG7pixuBS2Q91arvru89Xbr3zcv2FaSTVCLKbBbChgmp/koqG07MmuyTFHNT1cYyUn
	 2v+u2AzXUZDxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EB4C021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174054953360.18699.6202557813169547231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b349cd8f5f06063e057f01cbe7f4d907b70beebb5eee5347936f346a203472dc
Date: Wed, 26 Feb 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740549533
