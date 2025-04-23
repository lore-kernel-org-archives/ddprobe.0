Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD8318BC2F
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745387994; cv=none; b=nhIJX1Ka6uzs/T4iUtfUypRpPa7W+Ip+sQEdKAeVHRB+SG6YJ1hpo4KbDdraR6u335GwyRdFJgc4gVJDI9g2nuKeu80J7wBGKhVSgfTIVCczdY5weJZqh35SkK62i6KJq1EABB+czKCMSo+uAAPd9pQW6nLXZtNj1EN+efe41tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745387994; c=relaxed/simple;
	bh=SuRwVGYI2MKTwPajFxUFsyPLwt/0TZi5JJhFm1xq0oc=;
	h=To:Subject:From:Message-Id:Date; b=WjG2hmJikWfpur59K5tI8GUI6DHBqPJUCCCzASt73CcwI8NVvTq3xUsWKRHsMtAVos2CExsqT0corW4OWdMA79VexEWcQESgzO8coZnEo4E3QHd6PesVX2N7lGX5bEkAAzfC/PJ/7ZAb/g2/FHudmTGhtMTRIIFwTDI42MiVzM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvweR5k/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvweR5k/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79DAC4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745387993;
	bh=SuRwVGYI2MKTwPajFxUFsyPLwt/0TZi5JJhFm1xq0oc=;
	h=To:Subject:From:Date:From;
	b=NvweR5k/eVW6ts7eHab2z7Xq4UoF4a1hOmqWCKUQ8OcVmVxfo/CkRMQRDdHz0dFRC
	 yDHyTSxH3ViXY/DPYCQGa9DgC9mAN/tTGsNLuXkl9/weMZk8OdbPc18wMRsejZt03z
	 ojjTokWu9jqjcU394bV4w9WXrv+Zd8amvee1Ve6L0q23MTwyttXHY1pDePXL/2el8t
	 kqRDkEfuQZYxqfLfNt3qbJMwdrWkf5xoXqlcGUN9l9akL6/lNQflYmvNBtDj8zm/cW
	 +xyJDChcCnCcqxmq9Ed3qf4Qs9kfY4J6a588+D/CHy91l2n/3FVGdYK4QAUjSK+zTl
	 OQvGk3QsRXqDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CD1C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538799358.21009.14184717202396724274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76bb808690c6708728b5f4a06707df047fa5b29b3df59fa45cd9117fc2b772e
Date: Wed, 23 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745387993
