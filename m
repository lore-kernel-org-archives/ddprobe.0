Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301CB2D052
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747474794; cv=none; b=nH8EUlAD8CZ/buuZpgaTqvVhYkA22GLl//4wZ4HNLKnkntzu/+BLG8fN2fM1VkNyIkhlDXhzwvFJD04Cdt80kX+eo2lBZqH8s9oYvcjw5S/3J9AKwUVXpVYycxDeuCuwveOg+XXpaSBSFsDLAEa3rEF7qNs7NpnYWN3V5Zm/XvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747474794; c=relaxed/simple;
	bh=uWf0VbX0RQnYJR2QDfV++qOuQyjRTmfzPvefECzzxzY=;
	h=To:Subject:From:Message-Id:Date; b=Ac55t+MhCTi7Kg+mawsiBLcPhL/gdxW2tyCvd5vLu6yk/sEmPel8eKoMxelCxwUH+QSEUlElxuJXlGzGfDWY9Ovw8Ev8f+1JjAbtff7d6rmtZRCkTJ4QuoafcrEycIzPgG2JDPEF7P4nFV0GKwLYdhZC9yruxSn+bIZ+2xxvKVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiZA3Ssp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiZA3Ssp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F44C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747474793;
	bh=uWf0VbX0RQnYJR2QDfV++qOuQyjRTmfzPvefECzzxzY=;
	h=To:Subject:From:Date:From;
	b=JiZA3SspMDPXvhwDwurROfZQI/Oss8nVNqZlkYPP4bbAmCRERsQ+OJWqxjCxVZcZ8
	 WusNe+43n8g1MJ7qwwY1DZYOsND7Hjan2wYkB+9qjXr+OSyBblRC0njTe8XIABxIKa
	 Jqqdo5td5B2UhCxYzIsZ0bbhNXE56wOk52dY8K3WOFqP0l5lyghC82o3w9zwPstu9v
	 1yijlWc5pYsqwS8g7Xga6snL/MVQwuOfEMDzl7CFgE0+gWHlYir2PQ93DVidEjB2U6
	 9r5Q0Vdpjjfb3mnUCvShU0NH/fTNklmh7Zwzw6DBOOnsPKH+cxsf9SSyEMD1pYu1v1
	 phX2TsBGv2zfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905DCC3ABDA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747479358.20103.3396224353257257918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 118e32028684c0749e6da9b1cf23b9f304e246635c7d7ffdca1f3debc60939bb
Date: Sat, 17 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747474793
