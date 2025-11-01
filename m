Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298FE2C0264
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761992994; cv=none; b=AAMVje6c04wSQ2YjpfyQq6rzBlJkpx51ompyEdahTMtfSpdThr32vsVbd3/X8YseUs0hzfX8Z14T3dDJuyzX9rF9+NX7Vr8YaY1abFqKMDPFskj/hVtvszUQLtjF2Py8R3s0iAEnmnpP5V1PrNxIJEfvKHyr6MltjyP/2jSZeDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761992994; c=relaxed/simple;
	bh=cXOSYH5d4gGPRz1nse4hU1W9Q+6qsDHx5A8/a4x2sDU=;
	h=To:Subject:From:Message-Id:Date; b=XCi2xYPxnhu2aPUFZ9ucX6n/zZwLVnG/GXLvq7zHNoZawdVTbVA0oIlBSRILT+wLtkTLUsVO/d36FNBPaT5Wq2GQ8qBc6naOIjUmn55pVzv/NbLzj2tjcQBlX1Tz+bfNPhxOLvnP14GRe7vKanDov5DxFRx4ncofClIZG2voDzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmtbUo+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmtbUo+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3364C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761992993;
	bh=cXOSYH5d4gGPRz1nse4hU1W9Q+6qsDHx5A8/a4x2sDU=;
	h=To:Subject:From:Date:From;
	b=HmtbUo+Qzn7wclAOEq70ChGp4Fuf6gqFg9a5XAsVCeBDyVLinPgLBUjG792LGFjQG
	 m5/DeC3f+c+HKsuZnh8DojEQCBywdoShz+nsYL9OUf6b/42GM6x/5wHTaRNUdxZXCY
	 ZGEbUaFJgZBS7E5SylE6LZPRPURiCrmh0Q4s6EII2hEDazzIxDtwxRt62qsPqnCIZy
	 Z97yu2kwR6VJaChc8NBzLmXlSo+I+vzVgJz807YIUv/QQ9OCn6DdTbCLYdpCTB/muX
	 HxNqXV2xFWaLL6z811uKF16JorfGESJqfflBafMzOBFmQmMEpXpAiKbH6r18/7Ph51
	 P0+7DFJFDZkMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B45DCCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199299361.9554.4532249510011525253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8fb92d78a45f7f08e89438da1b08c2fa9c04b49d551280c3fd54ee85c0ebaed
Date: Sat, 01 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761992993
