Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340B9157A48
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752998395; cv=none; b=Cr3CztqipzNdv+KXdeM471xUXq0AHzPwLZ/flhbxJ6XBn4Z3IODP6P5cnfCEFzCIKBsmfpUZ1NAw3oUyiEE3I2qw/9FrOvipWQqysCE6jyxEka4NQ1nAQi0OlkoGmqeMN+jPqMC8TvSstLRX5eDymGbB19xUR/uRmIbxB27FN0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752998395; c=relaxed/simple;
	bh=cijXxFeNN4HA45cC2tfigqGplnnktyWqXW4Nd/bN7VY=;
	h=To:Subject:From:Message-Id:Date; b=duuP84xmr91eYR0oqnaea2344jKSeCPFVB6ThMm05Tum7oXl/0KAK6Uj16W9WlDSS6cI5y3ydtBIeqVnz1ve4ndK456xvAW828EKfJKPoG90FeCchDRNS01t/knLIHId9lxkgmnf0iUZP2iuLGjdRO1Ge6VFIOtJ4ud93CMGQLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cc4u33J/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cc4u33J/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F4DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752998393;
	bh=cijXxFeNN4HA45cC2tfigqGplnnktyWqXW4Nd/bN7VY=;
	h=To:Subject:From:Date:From;
	b=Cc4u33J/zqPUUMmSOF2dqVB0Fr/gsdBciDcEyrS8h//n2UWRh5giOCetPtJXu+AWb
	 F9jYuzwbzw30cVDy9J2cWnWEkVdVByETo/oiqosMw0agdXgD/8rsDd9mPiMFTNOvYX
	 PRTiW9VmdDcCFz+NE/HPGPyNYYe2ZTPDOBCgTIC2a9zPEsjbp58VKXOrCiYCFiS8Xl
	 ftlGW+zH+dE1mC1hv5uDmZ2TbUsRwQOPkLPMb6kJiHWKjogM/dJlMHuO+b0mVE52gB
	 iObtmEPo+hzZ5JfBLmqgMixDEKQjUqnwOOWT3tQa6VK+NTJ6lgcgeL+VqrAkyzEWvY
	 h7g6FRs/BBy8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C0EC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299839358.19550.9460844574718282945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeaa1e1cdba1dcda52e2d84d1bb55b7fc63bab17d38972c27359f62bea6a49ba
Date: Sun, 20 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752998393
