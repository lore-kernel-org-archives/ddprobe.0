Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5F11FDE00
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737969954; cv=none; b=ZvIGw/7zOo0JuKUHBJsJY0tMZzgar/tprvd2Fz12h2nudmYtVNRGFRe4uy8MaOPxUorgOQ9sj3vKP14s785j6DAikIHklGdSXBgWe6VoTc1I+vd1OPn8yQrJEnk6H5Ur4Vi+PH9wdxy6eBhL3vW7+A3k4QAdb4PCGHFCB8LgnZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737969954; c=relaxed/simple;
	bh=OIklOcDPdUY2eZr6bL4SQwVERA/5a12RzAu7dNxbuXM=;
	h=To:Subject:From:Message-Id:Date; b=CeZOBS4AvBxe21xJjp4LuFtxZt+6I50cv0w5MHYaxql2xm5OjD9RCYZ9+3BZFisq1gAGNs1aBDRo7AfQzQUnlgWyrDqJ+L5SKw5p3Y0iHCzu0QMtNcNxDyN8PhalKHwtWO/HOWRKZyiQ0MWUpZHdBE3UOLzPvmIdhx/4B0s7T1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8rLnzXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8rLnzXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B06C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737969953;
	bh=OIklOcDPdUY2eZr6bL4SQwVERA/5a12RzAu7dNxbuXM=;
	h=To:Subject:From:Date:From;
	b=q8rLnzXjpU5hScjBC8qWoTR4WGuT6K2lHbsLFWCU8s2Ggh/TuKtsWCBhCSlxBxToV
	 yRZnCRg75Q7Q/rBL/Rk7T5X4+8aQ6azHZMSsYsBNORH3SBuIqqKKakZDFD3TJKeIxu
	 rMtvZZXl0XdDfgIUgLGOA1AWoaXMcJFsqyQ5x1wKUNM5K2BCvFhAoYallt2BPxo1aj
	 YlGmaqqOOWxxloKT0FqW6Yrivuo14z0go/jgb7aIB5u7I1WnBRWkuKVXxee3fUoYzb
	 62SJnnosh1iemFsjlgUpMkcSEZt4qAwFVqqbyUSP8GNcgKIclCKEmfH7/9sz6oqMVA
	 adsX9Y85kPVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922F6C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796995358.28720.5103814350535066017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bd9c4e620b36eecd3806afe02bdff21e4c82d63e7e26350ca1cf6443c132de
Date: Mon, 27 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737969953
