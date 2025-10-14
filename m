Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296D8273804
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760464794; cv=none; b=I//6d2nzWmHKx/spmywZaVHBydnTCXvn4GhxFMi93/QUYHrbApx8hvPYAUJXcL/lFDmCH2uBJVzCHWU0QuH6hOiF6h1ucc6NglhZp+YRYCB3mv+Q+4n55Rxs2ndhUAqf8FP0KYVTJPLLQuhCMK6ylJct50d151Tq+xpRGDH8Uy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760464794; c=relaxed/simple;
	bh=h2HK3r7KgQLL7GfDXEtfJ7x73tB/LLVgKaW/ULf3dxg=;
	h=To:Subject:From:Message-Id:Date; b=sfQc6EvQrY7RrNlN3rFe1ipeTa0As3PLRbyc/8nAbpHMNuS6+CjTry8aac2Z7VImkKbBlBqT5WO1KmogOvSdM9mjc4WouFlrVsw8K72EMJUiFdTt8C4qU1tMQ5+rKfqe9kUr1QwnMZ5xckuCZbofVm5capUZ0/3d4ZePOsbJjBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ij/2PjQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ij/2PjQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFECC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760464793;
	bh=h2HK3r7KgQLL7GfDXEtfJ7x73tB/LLVgKaW/ULf3dxg=;
	h=To:Subject:From:Date:From;
	b=ij/2PjQLfMmISO7M4Di7s4Yx+sp7LcZhEWbTcfkJhv24qB1dziHbvrhOrb0+Vm+gy
	 G/y60Mn+QjHpX3Tz8GrWWfyAWlDLlZ173subOTji67SIZ2otg24vGlq87Cbm7xW92/
	 DocL8BbfjzHfcUR1A84oi13zBf5rqJa5jsoJ6r14zcxIet570jLqQJvq8W6o2BfdjE
	 iD1CDiy+vwYTtj9Jdu+JwqYeje3Dit0GYE56sj5I6UmZgM8Oo0r3dH79b426pkWJYt
	 QEKNdyFWOn1qZjumRCmv16xprBwjv+lBa2nnkZ12nv59oM97t2ok3Oi3IA9i80se+6
	 Kj0RTEGGDgkOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B7CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046479358.2943.1038114194510068684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e150eb4dc5b9652845342882a595bccfa71f510201cb47c0c01dd8648e0ed5cc
Date: Tue, 14 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760464793
