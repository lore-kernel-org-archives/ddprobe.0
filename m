Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0670F63C8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720966823; cv=none; b=QocgP/BBXon+Ac8gh+t5Wl5JQbsAtrVH9oRlnpFauEL5H6hhROjOZ3ruCAJ4AyGoiijRDZV1UDFMW2gbbNPWfW86K4kDcKUeCl6z/Sumg/X+fWFqin1D7BDC/fclFbnqr4vYnLoCNa/hj78OlEqUbRA5FajyxcPPUQL/DlFsjK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720966823; c=relaxed/simple;
	bh=mMjdE/McOuC0wB0d9Q2U9tj3Irq4ON+dDlm+YFZqxZ0=;
	h=To:Subject:From:Message-Id:Date; b=jbBC+oT74R93CNjM0gDInFewer0HLm1VG3XMIh8/ncPCFsqB8+B6hFUkl07dcyevqOp84ve9cREq9t+Y/n7YkllF15S2sToNcY53bj2gGu0irCtuve3I5wQlxhHoB6ZNaIb67M4VuYIYTWKXlB0h8ahujnGceqoo5C43eWJW4Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfRlV1PQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfRlV1PQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BFAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720966822;
	bh=mMjdE/McOuC0wB0d9Q2U9tj3Irq4ON+dDlm+YFZqxZ0=;
	h=To:Subject:From:Date:From;
	b=bfRlV1PQlPXnL57al3el9ZVwGx5VVRCElR7uwCnsNFyZoR5crDVeO3eUsXPXGycZD
	 WmlqubUxrahFTsQMQnMFpcC2RfnmrOWcql/zMxbI7JEuhRIsRxWdlf8dm9gStj0BaL
	 FMPLS8hTC5MapBuvYc17+//eIYujGK4rvYDkjLY2XVpTLldnOkiRTDikIkZ+HXR4+F
	 Rj4IYHqssmwOx9iY6Na2X08q9IUO1rF7yx5ZEX/hjqe6J+TtZoeh/UU55LFlp6wBLd
	 Dfi6K5sFB6FbOygTFSe61HW5nZmbkzH0ULyQNfqZmIhYbpWwB5T1fCVnsWH69w5u8I
	 Qh9botgMk3mFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF08BC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096682276.22891.106317918656911544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50e6a68d564d2a44854834b0cdbe3eb3d7354f88f2db655160b7a623d244439
Date: Sun, 14 Jul 2024 14:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720966822
