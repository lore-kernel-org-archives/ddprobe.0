Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2814510E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 00:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744851595; cv=none; b=qF650N9F4M+z6/vEfi6k/qGt/dl21RG/+WiqrTfoFOn2YXLtaAKYiDSvzhgieevLZn+m+OiOxvvrtEJOVKpOdgnZNvgbYl7r2+9JJOksG8Td8KsO24MP0qm0qou/B2bWLltlFg3sf9Pmad6NnMB6+qyC8OyML5ZRj9HJAPzWuWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744851595; c=relaxed/simple;
	bh=t+z2KmEPM3ufQ0kqQMCctKigmrz1WGqsO/v+tROebco=;
	h=To:Subject:From:Message-Id:Date; b=IqVDJmnS1JSncm8yZEj8uUzkD+CBwKnalG9wW5qWlyV1gKY2HVZUPvBFoecfGXrJBMNHiaXnTjxE5FD4Q4qpFGUHe3Er00uHXkfn4kcZHoaU3TnN5pE2Hek3O24DX6hU1g8igwUhglp2jslNDQLfDzlTt3GeiJAhYiZf+8lfUG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4yOUxwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4yOUxwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF2BC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744851594;
	bh=t+z2KmEPM3ufQ0kqQMCctKigmrz1WGqsO/v+tROebco=;
	h=To:Subject:From:Date:From;
	b=L4yOUxwU0mCV71lB+8E+dSDZOhLu0fX/0ZxbswReOnqfELM4jrkBf9IvLds4C7epT
	 x0R6DZyeGsJVSJy9eFdq/9Hjjd2Q76bgr+sGOcyBtgJjA4GpqLVQuWF+5txTXiSqet
	 OqvPnHiQpcIpoqnnttVNLUNN/RHqDeVMQLCUrUuLZ2WuXXpPaTIrktaJv5pqgvOvWy
	 X5MrFSTLgx0jupktBhZSvE7faKzRaojZQqCHS+VBvVOJoBwoKPoBkdTIyV/VFNcTjB
	 OWVzeQW1yc72m3Mhk/Hxm4UCDL+aA4xECUPzoTsIm6E48YrGLBTVyU9DEK/qJyr5fT
	 pPQuwldaO11gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D6C369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485159357.7191.7917695301113126479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6588e1c545a9ef65a0066fe027f06b2edb01f4fd98c74af482ecbcd4292b1fd
Date: Thu, 17 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744851593
