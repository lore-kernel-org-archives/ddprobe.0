Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE1BAD58
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744526394; cv=none; b=ny5Bhyp97MTbI2e9XjO58krpgjIFqqCLwbO97pjfF88DrxtCdPEjiWohF0XuFaVFm5E8VXOgKURvwH1tg/DeXgcDRlKtDymMSyUBVTCjK/E/TPEzZylmfjr4RnRUJAMYTfktOxUL8Zf8NviIHMCdbEcME8B5Eknc44FyjSrGZT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744526394; c=relaxed/simple;
	bh=e3R8H6oEAb+2bIY2v7I8HV00gzsX6vs6FjMVC2H0B7Q=;
	h=To:Subject:From:Message-Id:Date; b=Of4PIkPEsjMo47G3Ie4F0bfElSiCqJe0xb6o4ENoeo+FBgRkzK6VHqaMjD2LgnwXihgkMx/lT+zXWFtYhUjKYlMcuZ5hoJsxXjeb75Xrxg3Hy5Vyy4G3Mn3s4uHwsZrRKoY4DDtofu384SkybpAn9pvUwEHoh9Tafkgx611/0No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knpX7vfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knpX7vfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FC8C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744526393;
	bh=e3R8H6oEAb+2bIY2v7I8HV00gzsX6vs6FjMVC2H0B7Q=;
	h=To:Subject:From:Date:From;
	b=knpX7vfJbvGPjCJr2e2AbrRRzuPj/8YC8/5xxeNjHY5Kz4eDhjjxRExEtpJZeC4cq
	 8otQuQhcyDJmdQimwJd/m+hnMas9ur/y8Gxu8HsAFIJ0Eisyzc8ohBEeBsqFao0fEx
	 ySWHBfeVUW7aJasqUiBB6k9qG8A44+OCwyuq/A7xjuWv8IDArcaEtxC7KnI0y+PH91
	 Vlgu6YGzv1YJ3dw5rnF4K6FrGDsCRr/eJzpsVA7PEIAjwzL5FxJRiv9WvNAViZtuhs
	 TvfO092Aa6VX0WZzeT9RqlQ3Ghr2vF9EIkyDpxWt1UrmzGIYaUgnZAtz8TFEFzEDB7
	 yikGjOpAXHfhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FF4C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452639359.30156.14712519219372878182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1111048fd3e06bb53f354a582cc4655fb2b274bd9bf4b204d43b169f9ce203f
Date: Sun, 13 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744526393
