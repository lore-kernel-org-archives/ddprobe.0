Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A48A192B8E
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727343954; cv=none; b=N2hbsO1h3y9uKQUDeC1OACHGYnio7vVb06QR5zi7ec/QRfjDHoSf8TUvuKl4zHj2TXW73A1yleB2mmYRmWlPxsSzpvjurE8Apme7Uxnv/ZgKM4UnEAs0NngJecPxabi+IVQf7GTG6kqyKbbjhTWi/vipVxcBRCFeE4+k95z+9fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727343954; c=relaxed/simple;
	bh=8RRiU3FN9ADpH3l1OgFBxFMzo1PoUxEIk4nqN/Z6GlM=;
	h=To:Subject:From:Message-Id:Date; b=Jz7bUl69ZlENl8HYu5nb/4deubflLBMZujowGNmyNiAqzJfcn1dbFp1ZlzYbZLNMoXCHqRmLd6w7kuQwtdRx74ZMEGUckIfEVJKuBzRRMzBiGYwLK9tjtrfKdLYN2aUg0tFQCsCEHhnH5EreWM1IlXXQ0eRSbfzRxN9dPmBYoqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhgXtBfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhgXtBfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2655C4CEC9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727343953;
	bh=8RRiU3FN9ADpH3l1OgFBxFMzo1PoUxEIk4nqN/Z6GlM=;
	h=To:Subject:From:Date:From;
	b=qhgXtBfsYGrNS7ChB4/UoBIXq8Qx/PGvCOFPg3DGC6i+vGawwPHVSFpjnfUourm8d
	 zjSgUDdCRJktHOgM0H1RRiGCfVFPZfUHT/YK02m4RMd6AOVkthfpEhMmiwr/zklDtT
	 4TK1bo9ZIjA1zKYHr6sltjx9ROEGynFxppnc9j6GzNDUb1juWx7M8Ru8ab3vI1lCYh
	 OtPP9FAuGRF6ZU5JKn6VbsxrWkt7YZXCs0x3hDMFblLffSoby34Xbxfkze+oSp4ffC
	 osbGziDWQEqYJerMAwwAPZlPHvDgItrtEmKAkN4rLHAu2KoonORAnHIR+O9GPzfqli
	 4CPnJK4SYx+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91832CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172734395358.4074.13129158891892158755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034898db1abb0ed736504de7684e0c6da59c179258e957dd622b480f7e2bba14
Date: Thu, 26 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727343953
