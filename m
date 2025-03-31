Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5901B43172
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743401394; cv=none; b=nMWH7najKc4JQLXMLEW029bLYB3VAjGwYdVgVLicNkZHrFIEm5xIXC3kqdQb0XBn+0D8Cwfmg0Btp9bWa8LYzT9SeA1i7g4Avp5VxhIxyPwk1FRDSlqDbIpSLGsJm2GD9sS0BuQCsVZjJ75B/LvKFmGCz0X+ncf7r85WbHL1SsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743401394; c=relaxed/simple;
	bh=BzmUxY9c+gY/RkfH5vNg2MnXDo1B1PgjfQmInkEy5PY=;
	h=To:Subject:From:Message-Id:Date; b=Qs4HMyFz3w0Sy7tovB2qG+hkJSbkcldinw7kreeclywqzfAVNp/GFanQzhPIzNFWnu0lKeXe+KSTsSo0NwVnMBsasrgOhOoA/FhTT/QGmzc+E+w5LGN9Qd1rQRqkkZb0C6W3KzcPCF81Lbfd6fvw9p/qAgkW6E6H7LvhEs8+iPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCXTSzPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCXTSzPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C103BC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743401393;
	bh=BzmUxY9c+gY/RkfH5vNg2MnXDo1B1PgjfQmInkEy5PY=;
	h=To:Subject:From:Date:From;
	b=UCXTSzPe2w8NayaBE3UhFarRNq8i5Z29P2GZXCWcrWWU7+DbT2SnZ9/szx501qaO4
	 op9Ye6PGKycSUTi8Z1aI6eeMg2avR7u+mSnRhode/wBSPlXEOWhdn5HFBXNKlgeADV
	 bQMrIbcXy14KRB5KG5rNItPSvHKudHbubGq2LtqbNzPFHHNeGIEbRKP5YVXTdp85k4
	 nKe6y8Pvj46MY4djUukrYQM1HtVuI0l+eo+8Wnmk6Pa9t4m8DYWK9drVNdUJ1/f3jJ
	 pAF5+Jnubs3syXRN6ABk+IsEF3iJA1P3qsh91mS3I8UrEMwuG9cnu2KPyrs+/vyk/q
	 h4/fSB+UeUUaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D621C36017
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174340139360.9888.7838662148101969997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737eccdbfe5060d3f78b0180ba8db04b3d740b8954742c0883ec8dafa0a43a0e
Date: Mon, 31 Mar 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743401393
