Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413AC2D12ED
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783532314; cv=none; b=D6uSYKaMtj0BmBzVXJ6NVw2F9VN5QjraCXfBiHWKdXfCtPef11peqMhQRxLuEztn/hQfWh+f9nyURhgbzEeXkD+wDEqvqH9RCbgfaKyaH2uvOxdKRWoI0XNLAcYoRlWDUg4GnIH7TmN2R1t1ZRoC9btnOVoHiCfMhFk52ebqNaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783532314; c=relaxed/simple;
	bh=7/BGJvSJHb4OM22OKWLoafdXRDZp9+mA4gSjn/XY+eI=;
	h=To:Subject:From:Message-Id:Date; b=ta9LDV126nw5pxCXbfGfA4PxM+G7NR93nrTqM0cAuElRrohG71szRtO1Lz8qmm3pPRFXiIc5F8DNCKEq6uRmcfCrehoxUrEq6IKuUNSSmvrMCLuTk0dcL7Drslsg17VYoOw9kVIxq/KVUUub4OwreQ2aW3+Hv4dzfYaJ/ayW/gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwqupK1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwqupK1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB04EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783532313;
	bh=7/BGJvSJHb4OM22OKWLoafdXRDZp9+mA4gSjn/XY+eI=;
	h=To:Subject:From:Date:From;
	b=DwqupK1UoULq1GIe3n+76w2PYi4DJDJU7IOUn2zXArMThuDpr0xYFFHB7DRK4i8FD
	 5OYa7SV+fas64snKPaNJ2k8kTDrihZMQJ20k18JQvHKofyX0kkJZIIQvemwSWecF4A
	 78jSx9Iw4xrt3ow+qYfMvMaGaEEch/nVTebAw/QGljDdOyuz12Ud7109JYY/DHCxCE
	 tkCHioIS3AFQuhHr6htdOeXvqGem+zpxbEF1P/pUy+f0DNzZq3FRjdT6TlLL4kJndu
	 K8alZg8uH9W8oRiTZ3dlezpNAtuMbQhH2IFMXZrRN/1U02WCZebvMzAYYBySh+HPTn
	 aFVgvscjp0vGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9208C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353231368.3369.11914667956400462210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e56495bf36e27a523890ca1fb628b81fa3032806df3f73e3a8940f70c9943b
Date: Wed, 08 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783532313
