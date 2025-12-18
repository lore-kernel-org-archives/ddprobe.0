Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF353321C3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766040834; cv=none; b=QSDCIGD04LtPcWmIIOmUqM5zoxcCiDrNonoJaZx/J616NsnSspwHi85Tu1o79T4fT1w3p8zdbJFgHWDSNyEjF/4kLEwC91VilnD3W/VQoSkn0tqL+p9tJ20BrlxCUwh+RPak7SXSZ9b9WiLP0mukrJ6Dyz8t5HLyILd7BhQFy4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766040834; c=relaxed/simple;
	bh=Ey62/UzCw+o3d8gs7RzpO/IA2WqaCeE+rn2bdNW9af8=;
	h=To:Subject:From:Message-Id:Date; b=NpVmKp6RQg7EYBPaf4Q1OWdomSSY0xPN9N6UCtk+LoPr6wY9sOwDyR4ZV4TBWoKExM4HCymzr1KjqcxxEfj2Dow60+ZX6TF3hB3jW3OuvAJsZd+0pQvy7TfDReMaKHQHvx11eOhl8/cAZu1TaaPy9vuGhuyRQMbh7HlkUzfwATU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIr+aQJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIr+aQJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C3EC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766040833;
	bh=Ey62/UzCw+o3d8gs7RzpO/IA2WqaCeE+rn2bdNW9af8=;
	h=To:Subject:From:Date:From;
	b=EIr+aQJTufV+pZctOdAJBMOIKpSsSFAzzsOds/1ztK7c5kRyZkpPEYJm1sC6Ub13b
	 +zOCySvk0ajCSXGORqE+td5hTY1RZBoteTq0ovGmVXig2Vg5WfUXG87MvlWbju9oLo
	 niN+RNaK1PMp+aaxupmD4skzkTguEWmCOu3XD/mzalcvs1g1ZCvqWRblGk88H3Xmmz
	 16Um9IX/Yb0558K1Zk8YRg3su/hjlv0Q69BGd0+Kk/4mwDcS3at6FLO9y2ZFRuvS8u
	 QX+ZTHDqjyHUE9WfMLAybu6kQywHnxb4dgwoNqDNgYYZufOhCN0iBEEQc+/Myispf9
	 0TGtzvGKstLxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DDAD68BE2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604083358.2169.6988816971025198308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a114bcef4963d685c1bd2a3dcaeb18fb7b9679033be7c14e69c7a23e16dabb
Date: Thu, 18 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766040833
