Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E58114267
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717266923; cv=none; b=LYjkBnJWT84QImNft5ZsIRzbEvYApeXLt/daoIJuQ/JBYJw0HkAfWhWXZD4/8iggKyo8l822vzWJxYCC0UVyf3HyB/vJqD+Ax6NxjgkVDH8vaDLZAxQquWYY1iMBssNXo3ZwZoXjGEo8UIZx8I4UPuWWhv58CG/zTTcI6C8vWfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717266923; c=relaxed/simple;
	bh=t+YC+IrUHe2Oxc6ClYOmCalVoEfTCxMTBY7SILq9yWQ=;
	h=To:Subject:From:Message-Id:Date; b=eGeWTRAh5gaQobK4l6NNGx1Y1l5I3OM4oR/VmHXpzWWnPl23wbpSXNgH6Qg+ndndhdaj0aYu+Svu+3pZnlRUHjRGNkgTtO4y2MkGidOin5gmtYiDYO4gWThLXPS4FkZZFJ2/J2H3JUVKFw7xRaVT+krN0N7BB/OowBxXVW+0l0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnQ4pEYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnQ4pEYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB82AC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717266922;
	bh=t+YC+IrUHe2Oxc6ClYOmCalVoEfTCxMTBY7SILq9yWQ=;
	h=To:Subject:From:Date:From;
	b=HnQ4pEYShuIc9CnQkk3w4OrK39hcc+LYv2kx+/U8+U6LZpyM4YBWnFkm8eNJ6DBoU
	 eUQJlvNWB4Wqbn5DzWYXLVtacU86VKNsbS0W4FOe/OamvXQDpUHca7ORP8h7aQ2+T9
	 Sdnal7KPpp3bfvs2naADJuUz/HXM5yAk9wY11EVrDHs0Givq8FI0dI3vugqLoSrf+4
	 Hlz14JOefUKqq2X/n47jLPAE4IVLBWU8QF2GwtKm3x4VgZlo9BKG7IWD/6G2MKjBJ1
	 ugsP5lvnVTTpTC4dbGrcI/w+d9OPlqHqwUSxQht10u5KzSguLUfbd4JyizufCBRui2
	 /e+2dOUXSS8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45F5C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726692276.29612.17130257516757608548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae7a2544db13d69f6e826eb1f04be93933e68a2c9617823add42792c48433c0
Date: Sat, 01 Jun 2024 18:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717266922
