Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2F1288D2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745080794; cv=none; b=s6yGds2GxJxqzT77g57TCIS6bb+ims8Q5JjeIoPk2t8i8JHlSf8o8gZWKXEC66SKvFc6YQMfHEoGtogYpd7q3wW+h+rKimxyuq+U9l84nm5ClniP8l8xMfHfHnKJho499tyCYHBmP0Z+KIzfh8SgyO8n/YGXd1udm3iF3oSpNtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745080794; c=relaxed/simple;
	bh=OHpKxchLVG42Ja2SCh3Aba+nAJ7jxeqZp3LNLWPlFMQ=;
	h=To:Subject:From:Message-Id:Date; b=gmmEhGzWMS8FC8flvrW+FnUDSEl1bvTGm2oR4oDV6C7TMX6g44pv3biO5ceI+cU2VpVqNKouG6iNW5r3kMfxJJ3DVLq10GYZFOjhngFVUU7xr6NOzSsS0htRwckblvD2pFOVlfTykmE9HTXL9nVrbv7gQ2iccYzcZ5VGOUNuKLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGAR/AZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGAR/AZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1423C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745080793;
	bh=OHpKxchLVG42Ja2SCh3Aba+nAJ7jxeqZp3LNLWPlFMQ=;
	h=To:Subject:From:Date:From;
	b=pGAR/AZcGiscjwh43nr3a8uN2V57ZugrsKreQniUP0tDFzHos4GCJjwYFT9bEs+1U
	 bNVKCOcoVCgj44GzJZDNv6nTqO6I9USxHtmD1d+7owJvMgxsWW2EnXSLMagVYXgsMI
	 cVKD6idnXaANqZTKcuVbeYQYJrL9ub3w8Jko7kRyNXKk9/+1td5mJ0G8luXSWHJepX
	 oPrC0X5rGUOWFBrRECGxbqRELMbfeKflxcTHxs5m3t5KibVLhsrifZravU0oq9TF1W
	 6Yxq3GZMP/alWS/NvNevXJo/AtJEHPRdNAehwFXNzySfeCqpfb4kBFHZ4t3vcU3mra
	 K/EyQC3MZEkxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAA1C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508079358.14568.5231011563292463425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab2f09835029b714479bc10a1a5c8c37ddec815ae02e767383d1ae948cb0eb6
Date: Sat, 19 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745080793
