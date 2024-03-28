Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75FD24219
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711614496; cv=none; b=iDCinguY2uqIYCVNzNcmRQU4uFtMuRw5Z9ylcN2qWXwOKnx19ObDN0Mm7X//join4aB1rdq9QuBaTm7YwPDasVjMKYmj0lOJaxZzi9ReOg2uPOkNwuXA0tY8xpD1p/UZXa7hW4EUJ4QlgHyJ47RKb0UoLIcSwxXZ6UdUVpdj8yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711614496; c=relaxed/simple;
	bh=oFFygcB8d9x5k/z9Mbi8yOBlXV0U/4mYfoKOeFkjjGg=;
	h=To:Subject:From:Message-Id:Date; b=bOYvq8oOACfYhUAKAA9e9Sfk2ZRz2ywCwfowz5738td62uZZHZ1RFPaa1LRzhEwNp+xW3ZU0mGfWIZWUUKHuo8eG3rpshfoNtRBJDvAvWAUkk4H98FUAh0Gg/3i8xiKnvW1pB1ViAyD7ojuHrOwAuTbJkNYdL6e54bKKlUNRkGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5L7CrTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5L7CrTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C25C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711614496;
	bh=oFFygcB8d9x5k/z9Mbi8yOBlXV0U/4mYfoKOeFkjjGg=;
	h=To:Subject:From:Date:From;
	b=i5L7CrTYKocs+qIPk/MO4MhxiSFdgVOaWj4KaQK23LwvGpb1K5dhh/onVPdowTluu
	 6Q9EIh+V3qbcYUvkUZqGd55VWxm8+BoEvCWBX4BtE9ChFAjoIm9OGiKEHw5hjmJQbL
	 /VBGOV/KhbqmQ/wIc3DmifcmVvVv9kLdUp/Htm+cQth28cQUPjcTVbfcX5IbDEgi2S
	 7HD0TCX5ODg8gSNhjDDnWGpWUn17rR9ZfwbIWDJ0N4qSj9xzZapu+7gs1O21sDmQuN
	 n0GJnnJdiai/eFO6t7O7uQK0YRkJ/HCJdzZ/RWTYDRrUwqwU1Epv9Qo1mnhEGdg9Yn
	 eGTkxxiJyccmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B58C54E64
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171161449639.31690.1805625219550324087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ddc78b61d9abc7e39f813763bb1e535c3dfee74f607678951957e364ae9b868
Date: Thu, 28 Mar 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711614496
