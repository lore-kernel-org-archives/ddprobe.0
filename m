Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3540B2F44
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728612354; cv=none; b=mL2Iqq4FsxioqHzJgwfrFmxgfo8iluxyWsfPZeGVbEuQnRe16uFCf+dce0UuqO77avlm3N6RFWPo7eWtB9me7jxF5ylvYgg1+A49yZPjSy5gchlU4Z8K76SfBqQgyAxS9rzKuuxEx5CQ+U9Cd7DNGkVfSusWK9Vd6tYy3h26dtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728612354; c=relaxed/simple;
	bh=szKFRd7fTOHwmfrWT6BUMutVdV7B3XQuIYF5R9dIH2k=;
	h=To:Subject:From:Message-Id:Date; b=cmmeZGB9Xc9f7YcglQZ7ReDW4KA08ejdVmSc5pK47JoE+xCsrWZw6Ng3pagOqW7Gib7h+f662xhzuPKGDJtwRiclVsrnvM7S8Cfxt3GtZgwUV+xQQXj9pbBwqG9U0sNqdi3sD9DOKeuPGDF49yCsI2Am84OAnCFe8mVI/gn8wnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/LMKUHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/LMKUHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68F0C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728612353;
	bh=szKFRd7fTOHwmfrWT6BUMutVdV7B3XQuIYF5R9dIH2k=;
	h=To:Subject:From:Date:From;
	b=Z/LMKUHZkzycZi8jge2h1ZG6nitGn93DnVInRtXFnqQSbLPuWu2QBQF46+7N1wVdO
	 G4Zv0NtP3mdqSgB72WQHfesjB3lpEVeYenj7SZKi4BsKJY18cw6SdAGXxUhIdW7qGr
	 X5BUUd3wFRNpiRSwtQzQg1q5HXLJGGwIUGKnXCsBEh6S7zeNUaQ470pHyEWDe+InDw
	 aXFWIwcrVLU4AE0y0QWDsrjBI7bncqBXNK4bRc7BKUylc1Si74wO58Q4wyTNAHj7ZQ
	 fov0GhPq7s3gzGVC617Ay/myO0caFj5694k8ouFFUoRmH1gOb5wlE+eZZfqlRICDuJ
	 O/T0s7ERv2eDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D45AD24464
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172861235362.23943.1990178507336752835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f37dfe141041ad8dc4d29e15a07902882113017c880e7e21e80a6bdc633103
Date: Fri, 11 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728612353
