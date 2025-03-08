Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333C42DF68
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 05:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741411734; cv=none; b=VP1wuc61V7z2ljF/cOw2xqkS7cc4ii0Ui7Hg/5ld4zZPOqd6BiEqrJwT7XIuezwJIK+61bRRRm0hPkxlKQ/nmykTmrhtXuGF3tmGuC8GvVuHpAQb5LnYRFgwpSY8AkMH5qJWRo5abXzfwG+UrfmejT92c38gOpX9AFMytPJuwtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741411734; c=relaxed/simple;
	bh=ZIWOKVWVQUkA5Rr24JP8Z/9g1FPcADijUN3HRsQdQSQ=;
	h=To:Subject:From:Message-Id:Date; b=Psm8MDCEbzyNqxPYw8o8M2bDWvGZiLlxtm3AA6A8w1lyT5/MKL8vsRHpXtXIrnkySjTs2OOm8OSYJF/t8/bKrRld5dHrm2cGMJnRNz1dZUMjDlJL9iU4PkfntiWlX2EW/oj+jEoykoLtBexiyz6TWXflSF5mmjcSI8tcLH0bjQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXoyJwse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXoyJwse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5021C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 05:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741411733;
	bh=ZIWOKVWVQUkA5Rr24JP8Z/9g1FPcADijUN3HRsQdQSQ=;
	h=To:Subject:From:Date:From;
	b=NXoyJwseUv/NiwNY7zr4g6W6gbTzGGSOTAN4hO/hmYhF8Ji5xiIZ9lbVYWPz3ahBI
	 FSNtA0gNJZy+x6Lpv9ufbwpCXbYNz98dAP8xSAyGc8jMnMLlJ+w3xvKp0RADRCcImk
	 53DhFMFsKNPzFzeHfRyxMXR8DrwENUJw3RWDNJOTRb5NGxopA6hWxrwkaoAj+uwI8P
	 jDnGHanGiepIgaIY+zhY3KtmrPb9deoB/+yE0Yhe5GRpfoP+8CgZkdLpWay9xoOb4J
	 dahFyk9LivFN7c3B/naC69EK1sS3AWaUGJZyPKVatJnaKDxTPj8uwKwpSG3D4ww786
	 RSgPyOMxhx3iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94644C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 05:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174141173359.17507.9099565279025975970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddf41682c25e3a46598b9dc3e814e5a583034feb3505d4c97790e64c25b177f
Date: Sat, 08 Mar 2025 05:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741411733
