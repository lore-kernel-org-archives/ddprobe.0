Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E93D226523
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739811534; cv=none; b=YJhNUOIQ+ILvOBZfbsLSJdNPc4qfVYe5wdqFYjSZVJEIVEwKvSwvGo+NWdZUlpEd0am8M/GQShA26zAhf2V8lMKK5ectOapXm2TRdo8+MHQ1QCuEXE7aqz0JchZ7JIt1Xt21Z25M0JMVmNQcw3USoTPdj35FOasPO9502l3ZIjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739811534; c=relaxed/simple;
	bh=LMFEn5Nv+PPrap3Wi1aHbQaYeyioa4W2plvwMFHChio=;
	h=To:Subject:From:Message-Id:Date; b=WakoDNjIeee8hIRcqkMt7Ep4QvbIL4BTHkBcf6vRRuANq94cI+Bv3vZR659mI+YeYb2kx5LCYME4eN6X6b96uHBEiiQjOepJw2nvDcNHyOsLPRHX4ZlHLvU64+Z5jqLFtt7LbG2S1Vn7FCCreYo2iEZ4fSb4YE9/rKS89mOoQoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDQr16sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDQr16sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC330C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739811533;
	bh=LMFEn5Nv+PPrap3Wi1aHbQaYeyioa4W2plvwMFHChio=;
	h=To:Subject:From:Date:From;
	b=gDQr16sw/w0RzQlfqOxiu+XKI5LOhHjWouFB+FKrfJkmw5B6ALbQGG/Du2SqqIvKP
	 TBxxKrAGtX2SBaoypi4RR75V/CKkl6+ZyLTSsDPK+4XltdILZafKbSWXe1mQ19lfM+
	 zBfvrMx4LXh+tk6iRcpe3uYeDK1IRlvyAK1kDSsUzrVwU7qX8qSIep5rjT7CviNu36
	 u+tYp6NkBdlbZN4JNNP0WRxw7brnokGC3YHPqpBsNjdSKpJ6g3MEEAYldA3Nye4kMy
	 ym9d+xaykFflcaGcny8VWYlGqYLzuxeDM/AsdiwOUz0w92NCa5p3qsq5ZgoRZ+RhuN
	 v3jqZ1Fx7oS2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5A7C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173981153362.14796.2859486651199225844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561179ad1c4b450d38c1593f0b08c615d71c45de2b57e97949bc00e9c9e10a5e
Date: Mon, 17 Feb 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739811533
