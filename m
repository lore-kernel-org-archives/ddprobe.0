Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C21B23CE
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738790754; cv=none; b=BQIti7tUf5HoIbtkNuRUyfoY4I+dYhHeMGJAYpd9CgfLhlAu1csGdc1YSQDZF3mH9Zhd5PjafRwvxZOKYGI0f9g2oiPkDR8EsRiUMFMxC3xWv/VsEssv2sAm9OQrNU8AAc2agSTom9J9oD71kpG/ewzB24u9ynO7SfIQ1+oPpFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738790754; c=relaxed/simple;
	bh=r7n51l8RLxIs8VBz8BodI+cSqtxLahEEKCnhoJsg6WM=;
	h=To:Subject:From:Message-Id:Date; b=C2bsgCQFBIe6C7Iyj2DkR0f0jY27rhXylO/kbDDRmm3lW11k3fyN+PNJhf7B8I+Kfyn7TF3EXgSZA6FP/7hSReHMh+GRNx2cbu9p/dKGCUPA75CpyZYyNlo0ZnVrI9TWIob667kZ+TFfaKvuZZ/LkOG1IeIVRdCy3eusyUlI7sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6VkAYKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6VkAYKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4362C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738790753;
	bh=r7n51l8RLxIs8VBz8BodI+cSqtxLahEEKCnhoJsg6WM=;
	h=To:Subject:From:Date:From;
	b=g6VkAYKELjPnw7O9YESwZoXf5dDlH3zQKxNIeXTVjtMv8yb34T1UlNJPzn+rHdUDG
	 lrk27OTz95hoynVV3EhcJ7J4bd/kO/UKnU/hdn68Kodv5ne/BwevtN64rk+YK+hmzy
	 qduk/aaWIVbJr36jTueUG6U433fuTtjgxtBXnYK25dCVTrcicNQetTHQMV7N8kOo1W
	 jSicZYqciAciBf81d8qeRuO6vyqgyIOymYa+C1Lb0pryWmUoWoO3xn7x1hviLtdg7Y
	 Zzt8lMd8A4kvbIanwzorMYCUz2nsBZWmae8khpHi8Om8Nnxxk5ZGGb+9YVpYzzVBRp
	 YvJ7dZZnoYKGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CBAC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879075365.6219.5938236089463409179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731dbe2488a52271ba15bd5b26957b1431935d531dc94aa20043b62377ce2377
Date: Wed, 05 Feb 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738790753
