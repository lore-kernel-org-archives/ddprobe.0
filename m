Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4A6346E7F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773081294; cv=none; b=ZEUPHghGp5FuxdfSbr93DH+tCTaymbGQjq4fD6ZuYyNRKQ+M3sG/HE/G1wV8//TQxWHif1R8J1/hkghW4HXW7LhQbkYGDIZEXcQE4HbP2d3CCHH0iByDf417xHj38AdIeHeDvT1bYb+Nx3FhXxVA1DTsILXZIT0Eck6v6GTLOYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773081294; c=relaxed/simple;
	bh=zuvY5HRTv7vCBIE09a8JNRFhx4qCa2YHO+zgm4IpENs=;
	h=To:Subject:From:Message-Id:Date; b=cqpQMZmtQNqQdJWkj06SwH7ypLpi20YHnuji86XkH1dmj3LA2+Yy1vhCnPt3agogcjwLblI7zEkRwBKBeCsYIQrTeR0EyMM6N8bVGKbjznCej1YdckUPFU4TaAFYwpmRn7usCEPmUkhWhdz+XS8pFDEolfC5qNmgTajskDbb8/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3emP76z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3emP76z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F78C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773081293;
	bh=zuvY5HRTv7vCBIE09a8JNRFhx4qCa2YHO+zgm4IpENs=;
	h=To:Subject:From:Date:From;
	b=B3emP76zQChp2zqz5r1bUF9pXbz9DkpjU48Z5UEYGgyyEGpds90DzidyPjTUTLwnl
	 PbYZENr3rb/FPYikpd2f0D4zYmDjmYr1iLapRxzkO2ZPIQXjaQCPs7RpPQcEwTACBb
	 To9LXiUtWJhoUZuNVwwlJJX8TOXqRKpkwXzclvFM1XzlnEyq49hl9EpfcWJmDIsamz
	 62L75KB2hb2ZT1iX8jS9KY06I9uq0OYrVMD4L4T9+elnpHsgawvutJsAGLAVvHRwzq
	 JTaS6r73h8TnnskR2NBa2PZBHW5QafOODO9XFlRklJW6PCfPIn87jx9nMJtPOYhd4T
	 2AQJG0tDDxpbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE8FCA16D
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308129359.22596.16452017907399057243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a37a843951856936bc3115934cad1e3d6459f28ad4e6b9cd72d4601f3f35f2
Date: Mon, 09 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773081293
