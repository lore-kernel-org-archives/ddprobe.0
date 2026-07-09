Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30583379C34
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783610914; cv=none; b=nKZ/M8X9beGu1GIz3RBJYAqTuR4aVWKzamRVVeDPLG6Yd6nVBYPLcr7A8Pv1Om8PxiTyYB0SACSziSrJXmDrCqGl3psqMg4J34YdnvimSsAD6xYobknqw+jB9pIKBNRkkos48GOKGwerQ0Zi5zQctUKbEM52d4qCwUrdpqhZyq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783610914; c=relaxed/simple;
	bh=jRhT/PQGF0gc50cnrLZ1+fwLrv2jvFnmVFvu0+mNkRI=;
	h=To:Subject:From:Message-Id:Date; b=WWQQtSqZcJD9uGF0LQxRZUb4YVz8QvACnLwDTUiDG9WIM+Vr2ntdxprE2z+JOkcF/Srt+2z6jpQgePnJBykB72/WI6wPIJ7Iq1ZCeR2cz56a7FgXXIZwk8MiIy/CpvyKpoe+HK/SGkxRX6ySzRPOFXkcJiRbZ2vy0+91c82kjKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOEGCQXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOEGCQXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8350C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783610913;
	bh=jRhT/PQGF0gc50cnrLZ1+fwLrv2jvFnmVFvu0+mNkRI=;
	h=To:Subject:From:Date:From;
	b=JOEGCQXFS8w5FMv2FiScpT8vR1xRvBOmEHdl40Bi95mxo/Lu4sEZJ9FqNw9jcsZJL
	 YdsujUEgL3CN6bmYm9Kj5i0VMiDJ2tc1O9wv0zNFNPOdBubJe2l4Wc2sKhP/QVxtsK
	 S5xjqMBXfjVL1jsgdgqcQJPNPmviXQFRzM+ReShnNX2A8zv/BWwCuC9yqdVciD34Qj
	 QBQF3N2PywudOBY1fytDXYNgL2cwSMPAupcsKtXd9wXyxekQlwA96xb/6F3qCXfVHg
	 B9ExDR0dRClscfw8exCC97btbk6Whj7SXx94g1HfcqayoCPWygfeSgvpXXM3wOTP0k
	 jKeUscNdkXX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E58C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361091368.9591.131580969144182776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347755eacd96dbc84498c052358c9679f534305b4012ba87aecfc600ca87f4d8
Date: Thu, 09 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783610913
