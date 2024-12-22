Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3232B1AAC9
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734883554; cv=none; b=ul2sI5EX3T0uEQLFrPmAxl2WSb/7xmZOJdT2ffjyHT3GJeeNRGezy8YE9+lvNyjGbiLOb7c8kzIuc+XlOr9eUC+Q8Yj0fo1kygIKuPUizoI4gJIS5xLvF3AkiTY8O0Jozr2xB5SS0F2I9LjKwvvoXC8yckxpH8GNFheUW+Wt4DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734883554; c=relaxed/simple;
	bh=6V+xvTiNd2cYbWSNxPzRNI1IbVCndzNFqQ8JuODUE6w=;
	h=To:Subject:From:Message-Id:Date; b=g1s2A5m/7omHbxzX+oXK3RnwAGKkosRgxh/LDSG7IVQSqv/RbmoKBPX9HTeA3nhVbkNblEtAdbqlWOfmTmkb9dLYu97LhveVdsLahsnTmjav4/K3Nolte03Obg/tOCejrpMiVwtpUwvcNgE4pZmhcPrxa/0Sngo8mCQ6QtPDi+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rb3+ei4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rb3+ei4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4256C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734883553;
	bh=6V+xvTiNd2cYbWSNxPzRNI1IbVCndzNFqQ8JuODUE6w=;
	h=To:Subject:From:Date:From;
	b=rb3+ei4gHSD0CkfzLYHqcQIClDBesfM0GzFjHhnPtPVxFXWcNIl5OnGFQYSFTWGmx
	 zRktFZKovZoZ7F4lVBS18dyXXOUpilFjpBSjO+h0AWKUVLiPnN6Td15vPAIkBI4KgN
	 JyZAH6y/Za/m5YOuUaWwGwhZcgVn5y5X1caZTXp7Db9yQfKQ0yF5N+svWggOFAcFo1
	 nyXuU11xHRMWpueDK0iUcyOnNauVOe3by9d4jBbWTreRFoxZxql+xLb8KDSuoGwnCU
	 CUyIw3UaVApAEJ5tUmtknAZeOhBPXL4VX/8kW4aYn5HWoDIf7q8V1S4iZX3gbwl6bb
	 sfOxJ9hXKDc5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94489E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173488355358.4918.15395614375011359613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04fdbdeb34429b46145da28687966e0a89b678bf1781b2ec468bdf0371161d18
Date: Sun, 22 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734883553
