Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEF74D8A3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721939754; cv=none; b=G9AisMlW6VuUZ15ZGbXf+SjWSWc5mll+EsibMXXxgv/H1ecrEwAVAxaLS2fyDt2dqU8D/x2JBtZnVxTgUcWEafkizPcrnJ21HXPPE40ahCs17JfHlcdfSmq8rJncrsPTBZOEL7sUzm3n8DR11FVTf7yf14fOZ4sV1CJ+Nv+Lr/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721939754; c=relaxed/simple;
	bh=wS6RB/DUK8Ds6xZaP8L91qdayHtpXL4/lPx9GLN3LU4=;
	h=To:Subject:From:Message-Id:Date; b=sHzDWWUGpS9I3JmQUcqj/1mPZnjVzPwNa7eIgOtvT3cX28ok7u/+1CmpBQx1b2KOdZgeBN3zrAXmxMus7M1M6WbJ/UySTlzpGwys5y2JW+j30BJbJ8l7VQhLEm3qj8zYve+Y7uMlN6IDIv3IXw7bE8pI+SJlaS/iiJ75nD1dzvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VK8qm6jz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VK8qm6jz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF18CC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721939753;
	bh=wS6RB/DUK8Ds6xZaP8L91qdayHtpXL4/lPx9GLN3LU4=;
	h=To:Subject:From:Date:From;
	b=VK8qm6jzCglkYL1o/X1gSZ5UK23eKGhaFj/LrV8CZh5diqUhv4sfCRilKYrDUnst+
	 rIXcfv0pEZZSa/R7Scko86m48da2FomoRe9w4OA6q6DF9XCDxgjBLqaK09RHXLonU4
	 P+WmgADIY0rcul/HD+S1jMAn2hn8lf4eCDujClRn0SvzFPadLBuD9U75DEcUxgo9jE
	 ZNF0KbSxhmPoAclDEHb2yymVQi0VUoy7HbV2XSQwe4Ikz2F36XAFazzYelmm6yFkRQ
	 vQBMxRd6sr/aLJemsJ6A2cdl+rf3lKgUcxqJesRoL7EbsKuLItVpIaVZxLtmtorU+1
	 x3fjl2uZgGYOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF31DC3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172193975370.30446.10208339255731599586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9219f133484058bfc55808bb416bb9da4451f46e85958a578dc683257c17faf
Date: Thu, 25 Jul 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721939753
