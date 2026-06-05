Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78676416D01
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780678474; cv=none; b=l/4Gph9d9e07UY09GtU8ouZaALxZf7AixuMrsdQMB7ZvGZ7xXeGGgQ2/xrpm0Mjq0Dt4xJdDfiY5t26nsj2WHF/RimE2powZod2S57bd7W9JLc4pg9xX+vzkywGhRZKGJBqvmy+W23mVzhG2uB4opSNIdtwD/+XaCbINvzCq6v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780678474; c=relaxed/simple;
	bh=1OSy73g0DFXrAJFzEFBGN3A3jbVj9Nmx1hnIsU+YKy8=;
	h=To:Subject:From:Message-Id:Date; b=Pdq2egm3u4iGshhIEkOY40/MNS9YgyumBWeL07YIhyI4i1YUaoWNGgMC1cTNvxFBM2S86GYYX7w6rsvGYlo5uFUtW3OhZ2TshI5AwfbYM+fF9z/Q1wWIkS3L0XCj/AsiQUglKvTasZnK84GjvV4ZmE3TkojPlcrkdzNWqJPqHIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEk1xVyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEk1xVyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1F0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780678473;
	bh=1OSy73g0DFXrAJFzEFBGN3A3jbVj9Nmx1hnIsU+YKy8=;
	h=To:Subject:From:Date:From;
	b=VEk1xVyYmxg1959YJaObrUXP/FYYRubxFPAg/CnPx+TUBLqT2ITQXuksR1fQIXOZB
	 ITL/Lz4GqPXbGJaXeOGLPhlaTq8H0gulDkWA2DbHSTdSCw031CAy6D2TbXnNXZGS80
	 yRsF0CWq04z1luUEOTJuNUbwhqrZkOKW41kV497uwDHN0BEfgCXx6a126xKc3FmDIl
	 nNjrgGq8yuevLdYxTVEWDQH0+yXibnXkjCzTbxeUumWfmYXTMxGA97u9x4f025l4vw
	 rjaqhXPIEa/qzds4ICs76Vb7GnKih2b75AeohGxprz/PzPGPHOv7TAGp4AW5niPOBC
	 2hqySu+j1z6yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13F8CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067847368.10999.14915406610794344597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e3a195b97f289350a58d7a550fe5f9136f27a25083554ed22858c12ae268be
Date: Fri, 05 Jun 2026 16:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780678473
