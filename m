Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3988225390
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769609033; cv=none; b=Wc1nEXMugTqC8VpeCPrFa5xh6WPkS9DSog7l5ezl2ozV1+hbWxoF/AZZZLf+cxQf+cbiDxGokVaw1UhEQvziiOfGdOI2aPq1hGKw1VMaUPdsDsp+wP5U/fwT07Jq4YSv7cUzKPk6OKjud9AsIFF8tYFYwUByLe71WNjg1Toygcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769609033; c=relaxed/simple;
	bh=SxbF1aG34Ni2IfF1I6AqHFknN7rMYPwLW5P1h6ZcAlE=;
	h=To:Subject:From:Message-Id:Date; b=uh8J2mLeRwu2d4Mz3w4UUAqC1mfk/tz1Mlf1CZnZA20Fjq/aCxOXMBhk3az7s6IX0ExC2yz6fHyE8iQhmTnbMuH3S6SM7scyYUuivFbP126oWgkl1fg+2hiqrCikl2j6vUp4pPVY7ZCF9WuSihw385xTOMda7eBsJb7rqvdTK8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqGZdqrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqGZdqrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96A3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769609033;
	bh=SxbF1aG34Ni2IfF1I6AqHFknN7rMYPwLW5P1h6ZcAlE=;
	h=To:Subject:From:Date:From;
	b=BqGZdqrMKFqjG2JO9XnvTQ/wAmV41a6V290AdW4PNqtqUjCOOQhGEe1LdXNoJ0KG9
	 BrH/BzD3c2jROG6NzUB1zgCY8a6XPIX/DWzjQnMFleMdgv/e0zypJLQ1k6RzCmOZ93
	 elpiK0KpJoblkVB0xkMP5jBME15+Xx4xVfT59C+tOrZcl22/gcUX9XZ2pOOB11Ekt8
	 WjcbylS1WBHmqGeu8dig+UFjKJttZ9uaY26JxQ8OQafG/QR/pii2jEHqWq81jdKDZt
	 +iRAxOsN/LLxUsmjnpkeeOKzaruCwvRhTxdp11ckKTxrn2FO2skFeIPJeNVmpolaVN
	 h+KFJ2HoA/KZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989E4D3F062
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960903361.26165.11966076415108146368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051709f8bf19dbd0ae1ea3a30e45b2f99d3e60f511794c7495881fa229892397
Date: Wed, 28 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769609033
