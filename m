Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5FC17F5
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 16:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715272943; cv=none; b=ibDhZ7TEWmEWWa3S1pWUcm4SyRLx7fo4U4B+4HZu+4tSgMmRbaKHYKMkO8fbe+k6Rs1vKY291azIOOfwtNZ6LzBLJxwKv2tSkHMVrS/I+igdlW7IhHUY+Qcnm6FGEWe230gPbBOCoczxSDryXLFUhYmtCsXKJvAc/unfILmE/BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715272943; c=relaxed/simple;
	bh=5pIPMTunhM9Y0/rzSfGFMH2lZNtc5au4Sgy3hOQjpYY=;
	h=To:Subject:From:Message-Id:Date; b=L3H9Me5aSVEX14eqI2EyMK6cgMfpTgCU1lNGVDSIR409Ywp6GaWOwPp/DDbQ7gUmDO3f+PO1OBkWjGfWicnS3Qn5Axsic61rBrtx9Brr7w3Ak5rnCZL6nAPKENAr/AQnA7BPKORHyTzZGc8ULFkWSh4nuQJ52Y/Leg0U/Sa/rRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTpQ5QFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTpQ5QFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B70C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715272942;
	bh=5pIPMTunhM9Y0/rzSfGFMH2lZNtc5au4Sgy3hOQjpYY=;
	h=To:Subject:From:Date:From;
	b=NTpQ5QFZO9HVnvQDykXzXxaoWfl3gJ8QPpwE6VpAGFwOQPZh0s3NcSmkLM3X3GwX8
	 +lwBlumWtZDxdAHsyrbJNuoF7Prq7lsZuL0zKLTR8j/l7qw75HchPoc01r5/D/kGw7
	 cPi01cXpWyEeFrlRG/MTM++XEL22tt9GOHxiddKqPkBXiF5Y6S8IlN8C3o6i2r3AHS
	 dwzoI2ZS8d3VHu+M6nD4miZXhjdBK94deyIb5o2leUTe+i6ZNXVThxoq48UGIV9bFM
	 JgVM1RR2hSSNAFgrAvR+vWyjEta/mShqfWW6AV5GbuTXTpF97MdtBCgmzIGBuU5iOU
	 gyLPTm7bPDYsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FE4C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171527294278.19202.2169231637413041942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f74c964c0996eeaf22096216ebc025423439c1a346f042a4d8685a34d4e4d3b
Date: Thu, 09 May 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715272942
