Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B72E35503A
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770801894; cv=none; b=TnjSVjfr/nAYL8/PHPiM0Sn4gSvpL1CUaH9vrwawDWE6W0CPqNJwVMNN4yJo+BHBbfFDpg+ZZVL2GLZUbHlL2rm+VhtOf54yWp3OvViv6jggW/G8eHPccdIE4t+wHGTCmfRs0lpn9kcBonFAFLNHiZC5JPTSTprzpUMhM3y+ipQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770801894; c=relaxed/simple;
	bh=bXSNY1t6CH2s3SBqY8dlsku2NduHz5GcyuQSmYcTqMM=;
	h=To:Subject:From:Message-Id:Date; b=nqh8o3rsJlWJK1N0e32LrBZkJRxmFcG9mKCQ+6Jo/VYGI35ojEMCloV6H4yn7siK9cOuCZ6bDYWft6wCoi3fUJ8nxijZasTh/Dkcxbs+J5JFuetIafnWVy8VY8hLf2U3QAo3+OX7oKCwGv2ppZPrABw6bVKKMJuvn+Hjrjkib7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEatcdSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEatcdSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88C7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770801893;
	bh=bXSNY1t6CH2s3SBqY8dlsku2NduHz5GcyuQSmYcTqMM=;
	h=To:Subject:From:Date:From;
	b=MEatcdSQG5y9HO2vdczXM0Gr0oQctKm8LEmlHSPeXL9HPiE2ZMs7TduOzbpUy9Icu
	 j34aXxHoipMsZ2/y4wx0OKCXlOvqDsomhN85ZfE3cm9LLzKJxxJLIoT9/FnQzSjMD1
	 MdG5nvCr7NlQeC4JOJOqSOU1UlE4hqcY5u6dFM0UUfgUHVJJ4myL8t9ZDTcxLTkz7c
	 0M2h2wh6sdp/YCdlcVqUZuamqu7m4VZryxW6OVXIXURmVr4l8qLOW0+WWVQB9RmHD7
	 9cqgv8Pp9202gWYq0/l4XpAz3MUae7EfzZ50/OS48aRz+9DFSL9H9MsseGEM5zOLgP
	 ebXTrjSDgNYwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3413EA3F27
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080189365.373.5758469350966477814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec95dc3802328b79999c942fd17cf0c30053c3f911b7c523ef3ea705c4f2f45
Date: Wed, 11 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770801893
