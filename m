Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161C0291C16
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752137996; cv=none; b=I0vHt9DBTx+vMbscn0yye1JHSaqEt61Z7um2kXwW/flMpD48Co9KCoUr29hD8igMcbrYvwIQT/xOsnLWoVGOxZioFord9jYJ/Q0F/8f7OaQWovHXl9KLCtgJdlS2yDV5yCIf//jvumqw19dkxO2ImOR2BczVr73sNcT9dPN+3Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752137996; c=relaxed/simple;
	bh=RIvq4atd2DAU8hNK9MJ9QKnNxtRpxbEz+HnNc0F2D0c=;
	h=To:Subject:From:Message-Id:Date; b=q+4d0gyyTfhaQSiSZZApUoG4ICeOm6wxCcumnBujJnkL487WQ/+37JKZ93bqM1uY3tyEoqSwFqT1VR8X+zn4jJCByovekJ9VYgV9ixov9o+IFT0gKMph5qhyO3eJlE/cJwjeOW/LzmCg9DGzpCCveVdUo55yTGHYLWkY/cVBczk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bwh+dL/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bwh+dL/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1188C4CEFC
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752137995;
	bh=RIvq4atd2DAU8hNK9MJ9QKnNxtRpxbEz+HnNc0F2D0c=;
	h=To:Subject:From:Date:From;
	b=Bwh+dL/hMqerUnzjxrgRl6k4GEjqnTStGLzw7lj5TeZE43HhdV6bIxU2iYJU4YKKM
	 bZUODb6qwdg74iyAK/fudlvp0WMIpKdpY2feEnkJfkDsXoaW35MzUVh4tuKx34pfAi
	 KBgOcGPn8Hpb8hiz5ndAg0ptoXV25iOlLbnX+qjHLYA+LzQ3tJw6YCheuMWJP1GIst
	 PSe3LPIJ6Cvoo7qGhuq2zmuUunmksjZ8cykvb3xfG+S4IadOgZbAVCEzInjaCaZfsL
	 jy4iuF9DmUnLW+XR3l770t6IXoDKxG2bOVwtqX3UehcN8OqZiLQr8px7K5xhZViNMd
	 MnZjaHYLd9o6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74EC83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213799357.30949.7904615994850280201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb31f22d69ccce302e20a875bd716cfb53e94661603a4f3d538f618f0e15423b
Date: Thu, 10 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752137993
