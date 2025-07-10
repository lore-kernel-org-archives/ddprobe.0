Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79C22248BD
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752153594; cv=none; b=mWDIsmwaBRKnEpFUv8hyn8wYO0ePbQ0epRwDOIoZtlAgaFxgFWYcv1PPtaGzYs3k1jeW8+qcvBvbMcJA8H4YhL5w8UbgkdIqLOuRGaSS6/gQBvA+y3G7TzYsvm+4Wxtl0o8JQzT2qKuBuBH+Jo7E9vxdpizlPdKBMvWI4WB1DM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752153594; c=relaxed/simple;
	bh=txdJI4SJD2NVgsuIFHMgSVua+lrcvGEQQ2+IThNBQOk=;
	h=To:Subject:From:Message-Id:Date; b=t7RlRR+whIXcH+KOw33GaM0AddfOg/+EcT5DdS3Fp09XJyqD5vM7VFZHVVvZ86zJh58ZFIQlN3KPdtyL04v+QpN2mwEUSNj/jp3+sEXc1FK1qyhzK/g9UA42YaHC6QciC9XAN7I+uCeZmX0gVRl/gIcJHsnseMTtK3NX/VVabTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHnJ1Qld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHnJ1Qld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E476C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752153593;
	bh=txdJI4SJD2NVgsuIFHMgSVua+lrcvGEQQ2+IThNBQOk=;
	h=To:Subject:From:Date:From;
	b=RHnJ1QldoAHJjJixlbXJv4hZtjSXJZkU/0k4Xn78TSrD/dMtHXZKwTW3hkEQqB7gP
	 eswNDzQC5K8R6iLdAp56rjfonhdQ8DTqDsBj6tvzaFBcx6cEYWtey9vsg37ExpLgmW
	 2Latypyy7kRvBfnEG5LJLiXtf7qaR3lu2lf96FNhN4fj0xIjr9pqx8jcNl8Wk8n9k7
	 XLumvcwzLtbAPho7yrY38S/Ob+B+kldx1TaSqrhXDn5dPfdtCRWDB7mm9vZsve2jj4
	 1GhSbvDtokndR0dOSLh74Wen1gAOfC/3Qs/s/O2NndYgtLtzrPROv7Alw+E1o6WyII
	 CapsmViB5XKXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89BC83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215359358.4145.11116074547399234109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5237a37e68fc87491a51c32162891dfd8738cbdc61c1f52267feddd47debf952
Date: Thu, 10 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752153593
