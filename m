Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E25878F4F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736196954; cv=none; b=Y15UFCXD5lziCWV/ETR/iYBJp9gXFtoxmEiqKPWcvgkwsyDXNWlHQguck9vKc9UeR6ObXa0ImXPpeIaFG6+3h/oImfSqXdJPEEQSeiXK+ZGuiSmPIo97/1+zZSIpEEXT8VsquwiPcyMXBY+ok+SJtJosFeQZu1OkFwio6GP06Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736196954; c=relaxed/simple;
	bh=2PGmR+2EbFOSDIWFkHBcjsFxPmXJ8aYMoiQI10E+YvQ=;
	h=To:Subject:From:Message-Id:Date; b=u7bQBGsVlsuAv5xjEDyUMZhbhrG5JSdp0paiDmfggyefl9FMMPMCHwH5jMFwLwWiBXcTkK5WRCaEYC3vtkrgsYLZ/HSZzioK9GgM4Il4mrhL+6jYLvG0BdJJK3Tz6IOvOU9Qrf5tfOCGmcgZGCV6j97dFQXXKPrs3QN38dQCTfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZv1FAs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZv1FAs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABACDC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736196953;
	bh=2PGmR+2EbFOSDIWFkHBcjsFxPmXJ8aYMoiQI10E+YvQ=;
	h=To:Subject:From:Date:From;
	b=iZv1FAs3CVkkT4wjKxeNR/S+DUBH3qQeOiS1r1IShOBl21bU5KPCgFa9OWkCoxvU5
	 kqrWH5ssRsgpVPrNbB7cWLinyAwq4ajhpWJz6xz6A/JcHTT56LrhT2BwufCCdAhSjw
	 qPgAWpbaAFQdWqF6s4gPcjneb0qfArV8UQeSwbmGS56R7bbiSwdOj//d/OV7Ip/MUM
	 Gje1m4GwueGMnhDJAcmwc9E9vM8Z8717dGg3V2+QFaCLoab3wu5zNlRS5BSFyN3eKw
	 9tzFUEV6wlfLtf+IpCqXuZDRC+hP9xMfg4hS122XkQUOQJ6Q0kB59QUJxvOf0bDKSP
	 YpRzu28a4F/3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A78E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619695361.18830.5868545959235010245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7fcbe3adecafb8901a29a45b73ca76e29ac2629eec916395b820732fe10b54
Date: Mon, 06 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736196953
