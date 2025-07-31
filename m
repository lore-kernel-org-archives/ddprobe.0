Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BCD21CC71
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753955993; cv=none; b=aOTvqSJQ0cALC3AqB50UtKoY8X7rt3fbzwG1eJCsSBpUdlENNN0DEB6A6C0H/B9NevYR12ay1F2fvGr/6L65k6cM0zMMdKZK+XsAp6ObAKJZ4W2u3YouJkvGOXvUMYY/gvn/RaImV5Wk/3NyPV3JyxbsDv6r/usDbEN+4UT/cAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753955993; c=relaxed/simple;
	bh=VH40n9Mmv3jrr/MRMfIViYUjfq1y7cu8nMviTczCu74=;
	h=To:Subject:From:Message-Id:Date; b=TxkkF47S/w/Y4YYZ32Dv+3Vy+cUCcza9PT+BXUH+MUbU/159SqqVRj1o69zRrijFr5klakVDJcrYpBOWVEBlSeHzJ5sT09ogvcXkNXBiY5z2o+f7ztMF8ByMWs9d+ZDS4Uq3FObeSC723dYYs8neBdDEHvIy6TD2xQ9KR7xVS2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXjrqq3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXjrqq3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBBEC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753955993;
	bh=VH40n9Mmv3jrr/MRMfIViYUjfq1y7cu8nMviTczCu74=;
	h=To:Subject:From:Date:From;
	b=KXjrqq3QoxIeMYCyIA5LNXuESWM2E6+ZFc3U+PAKXxA0HUL8a4dE27NuOAr8XYtCV
	 i69Gd0UFCzXDB8EG4qeG2A543Aj2ZECBqwT6aIqOQAF/2Yusfqb8sqcvX+sOfkcWRU
	 0PXPqX9TC5fzCzDOmjxvyjS2T+ew2zNgRPtnZ/jwwD46crlpnc1M1+AFPLQSIJeQjD
	 9jtNb3RWZcdbwSiXbYxXEdYTu59DMfZqP+4b19a1jVIWpjDh6jX8nsokD7Y6l/oNYK
	 RvkM24ZV95JE++lkOpB+reIiEzguzoVkjn1Fuv7zeHPBVEPxyA60LbsqP2dNTP2mRD
	 AC10hA/6pHgJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA5C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395599357.29363.7891832536920298558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca5465403c977ec263b392b85752057c513e6ff119f3747b971e0ddd9926ce1
Date: Thu, 31 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753955993
