Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE92426405
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786467034; cv=none; b=AmwCcGW2box45qIkRbQqbmnbLvg7gliDuwMSbqGuHLBoQpx2zBCHAOkzAO2ath/BpDj2m4iG2NgxZh6azOwv1BmhzYtcjvha8CS34OdOoHIfLzs/A/EI0C4UnVbXsjpBzN7PkIGVI64aJQpknTLVtBfY0ePYs1iQH8XfExg90iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786467034; c=relaxed/simple;
	bh=ygyFTWwk/ISSrv6JXkWmCgHi7FoiDSxCRrf9JPb2YE0=;
	h=To:Subject:From:Message-Id:Date; b=cDBTula09W4t4hEj5CBzzc/cUMS4ZHnwCqiZAZdRbsH5R3I1AvTH6HjAtUx2M7eY31G9KEsV1iAc7TNEN8fhaU2yz5XSSZ9iR+Zzy4F+J4kHM/aiDxrvMnEAskqQB45WlbFC8CNHsd9J5X3N/vsCa3pkTya1Ongp5bCyQwkAYFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKt+lrCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKt+lrCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C54C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786467033;
	bh=ygyFTWwk/ISSrv6JXkWmCgHi7FoiDSxCRrf9JPb2YE0=;
	h=To:Subject:From:Date:From;
	b=FKt+lrCeJyI2/PWs2orrC4bOmbB0lXaCIDjl8lQEXH9JupPC/AHucvtbpr9/Ube9K
	 1sYcgog1ew87Tp1OjWc339hfiz2C+rUHyKdqfmKNGn1FAdFvmgbteKP0O1J3KQRURG
	 pZ7e5Ag4Np8o+G6Q0HqEpFHOE5XY+MJoLA+PIOUMhSBkyELKjYtGSiAswmgAAi6xON
	 ug9st+E5ShZ7naLW0Dxw2sWsMZfQ5yCbSDDLAFL+8cnvuNzOxSidr59KrACyz4sa2o
	 LPiZyIbjktEUl2j0rvF2XT26nzlx6YaLK1Q5ZzyKn3LKY6iRMdfDSCDFtNQ4PP2g/k
	 OhQJkiEBgGyKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE59EC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646703370.19776.4219963772450353455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d7fae2a46f2ad905996428f032b1632221d21bad44dc6bce612f058ac8a7af
Date: Tue, 11 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786467033
