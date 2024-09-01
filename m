Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B922BD05
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725203754; cv=none; b=oox+KboGXiAHwPBQGoaCmGTvaRzMz0smEq7q9clpR2/7D/B+BUdE7AAIlXbGK6J/LTnx1DdsCjtqGpMmJjnF7wynTPFBcIS3DHnzNeoRKqRdb6F0fYVoUkGhlONyPXY0PDFJaPh8mPVePpOgalBKBp4MBk38TOCW6Ii4dUvZymo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725203754; c=relaxed/simple;
	bh=YfldLX+LGztEn+qKZ4yQFuDI33EQAR7rn3FKBDhABoA=;
	h=To:Subject:From:Message-Id:Date; b=SOom/J0XJdGhB4oaHHIHR5yosxlRKsPZtL8Wa0+bmcpSsO9f1Bfh6cnPfCC/HRlzEBFrNOL5SCzI9elHVcAlDd7Y4tpsus77iVUQ3Kg5k8wrjkaCM13UhdexH+3bLcvgGHJhvfTnD1B8YZLuLE62Xm7Jqn/vqoEp5SACA4eoudo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNascIUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNascIUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C17C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725203753;
	bh=YfldLX+LGztEn+qKZ4yQFuDI33EQAR7rn3FKBDhABoA=;
	h=To:Subject:From:Date:From;
	b=VNascIUB0CZDfW4PLQE7oDZas0bnLmIFY5gJfCjZjJqxNqJY8GLCyCzMKg41Y7HHu
	 7uSArIuY/BjXzRCOjfJCXpe+/gzB7Kf8w8LEj2clSWIHRMPUo1m2ZalP1ZeeQ7Diml
	 mcWXzw7eGmqssGpOQzmId+KxHmjaL2/M1bu/mqCfc3E0oOle4Fu8b8IU3cjsrE7MVs
	 hVSh5/0XXvYuA6U/1pqXptc3wVG4v1efE0cF2mdouVOGNDnE5JGm5Uw5zBMXxUom5m
	 qf6cX+IiZHv03UJG3JH8fiUTaiMah/WYr/oEH/LqvKZJVst/o/1ZGwzD1hw0nOQLWC
	 kI6uFEMOAduSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5B5C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172520375359.12249.4783435174844547022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f4b87bdea7158219ef30ea8097200e7974ef61a83db74c436ec319434c99ff
Date: Sun, 01 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725203753
