Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F66B1F63FF
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761022794; cv=none; b=huHLpG77Hj8CQYsZ3dR2qY4ePlomyN8ym4eQC0Rjvlpqw0xhpG854Qf1aaTLPVn/dKdFfzfyAaxDHUeV33/3PjOl4aI2glqgr6ALcbTy56+68WCBVSWBP/y+XailxtTD/XZigT5Ch+/iTNfHfwh2utG78+EUK7WHDg411PXOFHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761022794; c=relaxed/simple;
	bh=INRaVM7JLTBeB/uF9uFldsejZewuExHC2/LQSjhJaFk=;
	h=To:Subject:From:Message-Id:Date; b=Veeiy1N0YSCD4+qni7FOJc5CxjOqouzDGm56EfGrtl/aw8/XJQl2trLj6lHizRL6X0wfJBl2AF6BuMISIlsij7jPEMGvswyYqfFKZ1ga7ClUxRcahKaSUItdgGBvc/dDrQ4pnoAJ/Nf29/YMoP2I4cMdY5D8GMA++QeyCVE2BCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4XJf+NS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4XJf+NS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A726FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761022793;
	bh=INRaVM7JLTBeB/uF9uFldsejZewuExHC2/LQSjhJaFk=;
	h=To:Subject:From:Date:From;
	b=h4XJf+NSCLfjHC1V/btmWBD87HkvAnpBtiqz/UOcS6WeOynDmXgoS+n2I3bGBsQYi
	 O/s51sfbxC8Fe43/pv1FYufjcNrbaRr+Eg8Jc+Lj7C9Fr3eBari0eB6E43d84GILgs
	 l4wNhWwzJhvMDBjkvsP/p0R6NpIWp5HMhOSUR3OhhMwAqzYoNg5OROcT8cugqmrT9A
	 o9BaQX8OwaercxTUtz3yZPbzhSrsT6jCris3z9Ve4Ibqw2mReDTIhykiVUoPNvZZKx
	 AWnt28+UApWLyT0BWNF9OAovts4dZf2P5MxNRUWp72Fj/XhYao6t1kxaYuoxXvgjI1
	 m6Q9ytkfF9s6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A58CCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102279358.1073.14165241591094167682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4333a9ecd911ca9646946752f37c842534164a646a73542bc64291379161bec
Date: Tue, 21 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761022793
