Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7EA8F7D
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764435174; cv=none; b=SFIXpsLjvVMeJ0d31vyjlj7YP8k1mgY32OBT76Uyn3t5V07H93GHiVL5T52MnaPNm+7dIv1vkIBaohZ6YY3IkeJGSImqFFnttx/WuwW9Uy6mH14OnK9uEEn3K2UYlaLouo9E4fZPqniZ50nnSCJoi1293Sfu8QuPqV2LK4prEgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764435174; c=relaxed/simple;
	bh=sYrqnpmzv8hnEKll2D9y8Mkuboma/NmhTIa9aFfFP4k=;
	h=To:Subject:From:Message-Id:Date; b=uixb26zP5eVual8nlbD5FTkTV7hOIWY3Fbx4PfdmyjH+3LZ4jbkpgEDbX+pu7yCPOBEL5K23d2vWGetC5D8/XH+7KIxkOBzE2er8EYMik3k/4+D2qnRPqvzaldFCwF0ElIz3ilvE6M4uJorcg4kjpaA2+9J3a/epHG/bUCvs7KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCwmXVa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCwmXVa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E40C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764435173;
	bh=sYrqnpmzv8hnEKll2D9y8Mkuboma/NmhTIa9aFfFP4k=;
	h=To:Subject:From:Date:From;
	b=cCwmXVa9qR38mxp9B6gAzOpj8YVLQFCfjIsKKvIZriZ3vOw+JmcpwqZAyc9JMuLvY
	 vG3dYJHSuHW90GU5gI2Do/rm+nA7aTZs5+thKRTZS6W9FmMtEphwGXvvjc0ZDIaTl1
	 OALxSdC+WHI9IvNHrOI5grM1KphE1+dJ2GQzA9uw+kPGSrGtUg2rzlcVo/K4QVX+X7
	 BBj30764NP8k5skhQf7mEtJ2UOLB7gWIcjCbPGkOQczEZ9D+t15SqiHiCAnV9cZhgc
	 h+/7morXsrT4/DC5NrjKXlI2jECU8D0/Ka+riJRmMvHjbpx7sf59oAgYtJL6kcC4GG
	 cpB6/TiRRf/Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF59D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443517361.16905.2170609586267175249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80705854734022cac45862ec69398d54456154331823f9cdb944234a4d18bad
Date: Sat, 29 Nov 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764435173
