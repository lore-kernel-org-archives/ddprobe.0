Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0901817C6A
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706856497; cv=none; b=dOZ48jhUc0K1oyeHYarLF6H5mRbOrTFqUhrYI4ShRka0Ks1Npxyfcn4von+PLhNZOGE0slR3h6W1cLr9DgMsUOfulfOIOc5e1aZlupduZXlA+JIMuY2eFOcTNkNerLLSMB6AEKiNJF2uokjjUUF9H7pcdgovFoflJtwB9wWT2+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706856497; c=relaxed/simple;
	bh=idSuAEyOPDPL7/iK1IbT5HqFed3L+DADQ/L1izj+ti8=;
	h=To:Subject:From:Message-Id:Date; b=RwK19bx6tpWcHEwseUpjz/N6Wfa9BxJWeOBoa/ad39uNrPoXWt2GrL8H4V4kj4RfEtPgmIcq09cPoAWzUN0k2AUb5SeHZN9UlA+v+mRn8TDWAZ7MFVfXtDI7d3IIi/15bsHj8xP2IXYsvP0/6EJZ6U6ivm2J/2s7P0n/XhbyaBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qbxbnfd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qbxbnfd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 791D8C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706856496;
	bh=idSuAEyOPDPL7/iK1IbT5HqFed3L+DADQ/L1izj+ti8=;
	h=To:Subject:From:Date:From;
	b=Qbxbnfd13s4c35rUJx9Mcg3Mfc6KP4m2dUWDkckyZhq4n5n1S5RJUDwSYYTOLwbp1
	 NvZt0U3Zjy/bdum9KKZicWr3WsuC0EbAA6//yUOmttUbiilD1wVtTsSSK7kGopEdh5
	 1kHG3k0cOe3ThEGdMbRPb1Xo1xEMD3JzEYe9POX+TyzJtzVbh175nhWuFgko51rYz2
	 qGCBmFb3dTJ9cxt4gdc3/2qiA29LtwNnuuT6Y1E6UATYQKFrUJheTmV7C0NGA3zkuq
	 dP5Pi6lRVZHEYqjTFcqf5xexg0G/NjzyoiViqXonf6c2KHOKm/VN2QRkwBRBEywesf
	 zqMWwzCUwocvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE52C47258
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170685649637.10900.6417611915193681572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2636433e7faf98989be4572b8cb50ac04dac65ed410b4731b7a045e3d7b4579
Date: Fri, 02 Feb 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706856496
