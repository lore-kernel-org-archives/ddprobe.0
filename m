Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CF0171CD
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756318194; cv=none; b=nZKA+UHMx80u1lsj+eEp/PoPYrWPUxju+EiUn6nI/W2Uj88WCVBLZ1g+0ajBWdLHjFxj0dTAW85smGOVFS9Cp7jwxyka75RUDRq/jNJNlKjdW7hOsWOAsDPw+0B48AKv+9EIG5y0UDNR60PvdzT6cMTa/7LY1ivvF7DRt5C6b8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756318194; c=relaxed/simple;
	bh=UioKcnfompELT3N3FIym8Hg1XEU1/KNinDOnS1QVhOc=;
	h=To:Subject:From:Message-Id:Date; b=TdnEKsl4JxCavEmW5JtMP91RH8wwNDbFB9L5Y2vEiw5vRPh7MBaWphSN76TQzNzS/D1eCqnq4pNRAMGPK3nq6ToN8xX7dbC8fX8r7OzjR23yAj6BrIclfSY1+YJN0m8OEHlGh+My+zLPOEkSYtiwVk58Jq/3NXbH1DN/ZueozWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2Z0egOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2Z0egOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D2BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756318193;
	bh=UioKcnfompELT3N3FIym8Hg1XEU1/KNinDOnS1QVhOc=;
	h=To:Subject:From:Date:From;
	b=p2Z0egOy92cpz1LSuKCyBe//uuDzsh4ZQ8+LhoQrn8Eb3gxWg381gMKVBsi3iEGgG
	 ZKBiHCVPh2GSb2C+O4CaTTX9DfzBLIHvl91a5hGxk8sdcPCn7mNdXFNuz2tvOzrqXt
	 sJKbDOWObLIkq9QLOnWR3K7nMhzDsPXNvOHEGJnfHoQKsiunuvRVFiJ7CyspAb6Y6H
	 ZiU46sys/3E0A2z5/D7CNmM26U/PLaekioIbb15GTIf/f9NXXDN5QTVSNDRKYwspVF
	 5jlUvjf0WwhqAa7k58XSH+6Gr6lOp7AyzLtZQwzj5WsGqzn6q+7U4Qx1M5bsDSB7jQ
	 9IB1UPcjdykwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0380CA0FF9
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631819364.25473.9719196254278549660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64aef0756c0c482a810056d90ac14ce91e13e0e6c5c83279562df567c3ee6069
Date: Wed, 27 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756318193
