Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3F4258CDC
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772156694; cv=none; b=W9DMGSTCr9lL/CgoG5fYZ8dyT4qlJ5OGZj0DgFjV5fPfRQ+V1TvC9haL5kV5StwZNeIMU/b7bXmo88JH+FNssetjK8jbNp3j+9/iYTlNRhVM/X+BJGr+MG2lzcf0Qurltouo+X10JMrlMUhZGscjOVq4PRuILnkAwIiiJRTS7Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772156694; c=relaxed/simple;
	bh=NhTDS8sP0I1pksXEGrbMtaCwuC6wEEu22R2ewpFbQQM=;
	h=To:Subject:From:Message-Id:Date; b=G9HEgnOGO3UBVtR6xFShkCKKj0eTuRyozdn7iukXa3iPTCE/uDUlhehFL5QGnOjE9s4h/r5FBUYgNcPoCohvnbFWGcF7zVnstCrnCro3CaPxaEHB4+NAK102yV5aPgfMWitVKIyLwATsilo2ZNxw0wcUjXtWU7Yn6sDZUkj9ezA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY0Wsw+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY0Wsw+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F1AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772156693;
	bh=NhTDS8sP0I1pksXEGrbMtaCwuC6wEEu22R2ewpFbQQM=;
	h=To:Subject:From:Date:From;
	b=cY0Wsw+etVi0GzTCzrSuBtkL1iWP9xH1PeFqZ4zot4TuB2cOv4irVpJlhDUdgi9GQ
	 Fy63OOEYj7VokkAYrJO3VaFb1wV9Tz2E4gdzxpSsQ2ZoD4ChZnQEYmf3evgPNaVWeS
	 XIPsOfYgHfhnUaVqKsg/+eNqutjqqvcDMme4zTZItXhG8cMHd6axjcIWC2UfoBdRmv
	 b6hUaCrNRW4RpTri/T8ZUty3ohbq/txAI75Lr+1TPhFKZzCRzZMPXG/SN/uYirwCkm
	 B2o/o/omA+yRFFNcjBl4mDO26W1IoccYCcyOQgTLPrel2DA8f48VsxwdtAmScfm2qy
	 KxqbX1Ma63DHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F6CFD9E29
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215669358.22409.12261623790900271565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8825ef1d17856366e2309fcbbaa27365f415eeb6cd87df55c50e7f54e1fbd578
Date: Fri, 27 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772156693
