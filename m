Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611EF340417
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786111834; cv=none; b=C1H6ZP/J9uu92EI/mAYHPwwAsDiEHm/e2sw9qM15MAbjxpD+fq3/aouXwFoOzkwz/by5WkAwpb3nxYFkMLEIcf+CcS48CzrYbpEb57rjFRlQNdOBq3WwHOcITGZ9NjHvWIXWN/kjrNDfcslgtCa5bcJ22FDfl5LEAO3E5KC3u3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786111834; c=relaxed/simple;
	bh=9GgP675TMhmrEt8w75B8Jy/LwVr2k6Fyqh/dq6YGkx0=;
	h=To:Subject:From:Message-Id:Date; b=GBDH+tBIqhDV+IipXX6G+WWs9xoG67rbEq5rnEyE/BtVIY6qv4UHr/+GntUajnpT0w0e9JASMf/ohnm1x1lTqg5xdLTncSPtSsH6OVCZrsqz0GmGA1B1s6ZOc3oYneenQGyIcTKZe95mJs1CsFigPGhQnmTsDfbVbMLCuYaz2aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrQGh+MA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrQGh+MA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58AAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786111833;
	bh=9GgP675TMhmrEt8w75B8Jy/LwVr2k6Fyqh/dq6YGkx0=;
	h=To:Subject:From:Date:From;
	b=hrQGh+MA+xTD4k/i6uC9EfeaZ2p1MLcs3DLfYA6ng/3XzvqgWqtT5QjDjc0tEcdbb
	 c966Ouq7YTrUkfI7mLRtkSfvdcIBK8lnmsN/rld/jruqe04tOz4OakkJ34xPKvDOcX
	 Gzq1UMaBtnfatuR7iBsUQ6v4YkTkcH3O5IWwo5SqPyHQ1jAeQDhPfcs2RwBr1vxrq1
	 KRkiRZSFWoUobL2IGuA4EfG6o1x8XCB+uDqCzZ1K5IS2HAAzng+6skco7yfKm+bSFa
	 qJmWr3HZMDJyQ3kGA30tq1rmi67mqVmd0Eqo0wxE0o3Co5K1Gzhn0QS9LZohZ6DUck
	 ArzZxcf4Fcvnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF79BC2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611183370.12157.15118548918632216150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5644bf0841bc758d012a24f5e48604d8124847825eb902409ec4c45099a0780b
Date: Fri, 07 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786111833
