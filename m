Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FA62417C3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744201795; cv=none; b=SBa9+EFIJv0oBYURVu0B/MBm+kPOcQQt8Pc3h1g+FDaCk/6X2eEw6rFdWo0z9rKLQ4CUJs6O6rlrLPKyxRWlmsBXyr/q+vxqajATV1KE5EYp+8zIyxaGGrUug5qW0AqdNswkJXxUx7J82u58pm76hbEc0UYj0rIh3Xict/sZ3Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744201795; c=relaxed/simple;
	bh=uD1/+DRnhQzTmw2tfmTEUjFsf+S1qJ0WDg7ZShmXRjs=;
	h=To:Subject:From:Message-Id:Date; b=E84ucX6RY+A6v0j3do/2i66xQT46C3/eVZQ3NhZuXdnFdGrSY781uD+GfIfd6uhHel48bme48ENjKOHpwARE5Qi/NMgaogFR7VKv+lfeP7+vEYQxN4W8Asn8xhRq8tkXn+MFfgsLml/mcWKUjFL8YwmriR2jVv9JHwEOm/rEEdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEEi7Tn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEEi7Tn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B66C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744201793;
	bh=uD1/+DRnhQzTmw2tfmTEUjFsf+S1qJ0WDg7ZShmXRjs=;
	h=To:Subject:From:Date:From;
	b=VEEi7Tn/J/I4r/I+tHRyydPwBXnaIiFZgw3OEELY2ZsOsgCQoiB+klHZZvj9OfcO9
	 edQjE36N1p2im+t34HZCrxB7486uY3EE3TzuNIN91Z/wwmk7rjNuHQPRsYhVEOFpIr
	 +YZ2urLBXbZcC2isbYuQT0L7uCqlKgNSspY+t8VJLcBTExpaSXV8+w7HBIAkM8Tv5U
	 u5eeG33J6dpNUKsd493BfVxn+H8sXRXpPw8CEF6GIHZyvugk09DsrVYE6QLM2v2aeu
	 B+AWWd/teVncSGL/JQg/0vijN2EBSIV1fe22Gb1k1fcbpb0vfrX02TWRWgBifRacBz
	 DoI5+QAJisQtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91430C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420179358.12830.13001603934133202802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb719f3ec87b429a22d7c41a26f03a78ab480b7455fff2dd11934714722ba1a9
Date: Wed, 09 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744201793
