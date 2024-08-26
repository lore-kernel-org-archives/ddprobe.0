Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA9310E9
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724695554; cv=none; b=O1Rw7lTg8lxOEU05qF+Nu4KKoGGY2AT+wwT72BSQo5uLTbSqZhPS3XvPijbRgOAVbbYqEVQkj0eBpleB6YgApSADEnZgvSDX30aRIDQWB5UrPk0QdFZ59xxsAVDuKkewGbODPmt0pgNhTVBGoCY4hx/8uQ0uknK1VMIrZfE7+Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724695554; c=relaxed/simple;
	bh=BnRoVp47HetOjzqikMdn6O9pSg2dJ++egAMdS1lCzEM=;
	h=To:Subject:From:Message-Id:Date; b=g32bFsxaog3jZNCf1XW0dcz49S/6CdA3MK2Rw4CP9fs1LUa2ONDtFv9kT5rDjRpZqg4+eFKT0IrvsR6uc/UjIdARptk2sdpZRKY2A194lMoD+qHo0QdfXTLqwexhOJq3cHudYc4OkMtE33RqyCj5EQ8e5586pP0Eq6En41oj5Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uqv8197d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uqv8197d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA65EC8B7A2
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724695553;
	bh=BnRoVp47HetOjzqikMdn6O9pSg2dJ++egAMdS1lCzEM=;
	h=To:Subject:From:Date:From;
	b=Uqv8197d3TpU1vPBwWCOzVLHxnOMGbij1WVSGXtxZX/qEPrnSjOAvkj5s+EAme+Hv
	 HjFXoBQVuU+xz7xt+RMggS2euSH3yMtdALdmB8HyjPgdk4rgcCqY9SAP+EIxNrjKcG
	 TU6jqEdNtvidpNTYfMkkxXNpZEs1FfALcpUBkOcc67Hk7odz5SdqCASHbbeQKBJqFj
	 VrEaph5LjEFcsPkBiRQotqRE7If7VE0HpEdA+WuqsW55PQbx2I0dMS9HJBimgKqlNb
	 DqH5GppP0p3Dmb+PdBe67w2gSFcbdwlWRwgBnzKl4bXPGVVKVXqQE6Sd+6zLubP/jn
	 mAAx98flvXGZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EA5C5472E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172469555361.3624.16145236599232387228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affd9cf21967768619153471204b5a15983b38ebf9a2778d4c2b5be79b829061
Date: Mon, 26 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724695553
