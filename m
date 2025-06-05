Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0BE20330
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749149395; cv=none; b=nUcRA2sbVQFB2dYSTCBEVQYA+n0NLcPj0j27vfmuBx2lFMZvhtKQbSiFlDzFX2qqD3CYmVNcC+PeaVV+NOru5GmU07ip/MLL5oW88osPKaPq62G7Bh8NNdfD6tRKkV+V7CU/vHPuYw/VAiBaE1Yy6bHQt02YuJZcjdybH4oPNG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749149395; c=relaxed/simple;
	bh=6myeiiZMloq8CaQ9bWr8ieCkLnYbQN3m5/Al5OB/UTI=;
	h=To:Subject:From:Message-Id:Date; b=qyFIYKY4oC5vLSGEhhEno5SOr7fFIQ5pNE2OwVuBr3J3bGH+WXNrPIpg60fqA0L8UWhOjTNl1Kic4ZIyvEKTRRvG5pSUbNNUMEjh8nnUvy0iWOPmmMnzL3p5/kjo4sR39qI/5p5m8CyyVcRQ9Fx6Z4yXYyKiVBLHroVfZ3/eTuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/Cx2hYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/Cx2hYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D93C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749149393;
	bh=6myeiiZMloq8CaQ9bWr8ieCkLnYbQN3m5/Al5OB/UTI=;
	h=To:Subject:From:Date:From;
	b=r/Cx2hYjNocEv7DsXRJzc+TQ9zWLnWb2iqXwv85g05h7cQPA4IKmfUoiVvIn3rkWG
	 cE7T2XKGRE1pEUU1rQcnWcBVSnBK6hOMNoTdvCRoaV5bKEAiiIKQGdguv79EBllTmQ
	 TZXDouRVZzy0+o5KlYV3SG1tO1GfngrhORu3wzCADduzyV+9YgWk2webmJvn9gyUDI
	 mExeCKMyJ4K/Vd4dNr7LWnv3gXS8+OGtr9IG/9f897ghIQHb17YccnUCLfIRbH3bx0
	 1a2wOmC+gdz4L+dIKjaHCVLZbsZ2dbGutYUWdW5+HrKRRNBmjZq+1RdinZb3u/anXx
	 4WyuFbM4Ys4Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922ADC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914939358.21641.3306536954967953469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fce5076e2762ea47860840f89ea5280b98d4ed2f93252715c457ada3f609ce
Date: Thu, 05 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749149393
