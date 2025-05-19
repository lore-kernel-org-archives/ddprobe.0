Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1C02874E7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747670995; cv=none; b=Iw8XeFRu8HPOEWuxeMX48m3ycOSoAiYMrfzDs3c5o2WX8nl2rGiOlvenOsTis/R/iywiqL/XO/4UU7RkzVoBF2FRQx4tADOrBTkK62HqQxzyZrpYWLGQRCCfnIeWH15x5IgO9UCUVrM9aMNW6zG1jUZiTtrCjWbGGqAMe+vlBkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747670995; c=relaxed/simple;
	bh=V/fv2KnMYkT/GkbPdYPZ+I11gAOeaHXDOpzX1gtxbl0=;
	h=To:Subject:From:Message-Id:Date; b=AEZIfK10AVpvxQMzSYe4r2UqdDZ+aDW04HtQnj3bm6kwPQ0wxTIJKWtWZUaDB8C/8baZVMnomp1ODEj9owDBagPrCxenXf/nTTkfcgwqpHgnnUvkDgGshZSySbhnCsbZzReZ/eb9iF4GDe8EULyNiVKzQ0JlxrwVoZT5TXwVmrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Krq2cgNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Krq2cgNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D755C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747670993;
	bh=V/fv2KnMYkT/GkbPdYPZ+I11gAOeaHXDOpzX1gtxbl0=;
	h=To:Subject:From:Date:From;
	b=Krq2cgNs9qX7jrL/z7jGB07KJccTsMOKeKmJO5m8xvmli4qLP+comKVdasVdxmEZj
	 x9n2/1O9C+gUI06OvT+anDZcngAhOGNGYmssINfLqBSL1vlepeuN9ZP/YhDa3VvogK
	 mgZ7wxn6GoAoAU/zRC8UvhtQC7sKu3HGYIleU4ENgPKM5E+HnPUdHeKcHUdzVghmom
	 b0l1UOJ5Q2Y5v/TayN/CmsEYOM1cdAG3CI8K2zkdy7JPIK2R00qXcUxY19oTvQn/Xr
	 aY2MWt9oLnpf2iy+YoQlzYT+woiy6T2nNvDcFr0T1YgU8gVTFlfmX+/9DukvTUi2g5
	 SttiARANHJlkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07FC3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767099357.24389.3685413375610021746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687fb4d38eddf1b33f51202640b417c21a341a286c995423874fea9d7d1144be
Date: Mon, 19 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747670993
