Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA8536D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749315594; cv=none; b=clJTBGdcHC6HE1ymnvFKMbJvDUAOi/d3FHomMeDmRCrFuv0esRu77ulN1ldADFVk+l1Y+G6gWFarFPd066BiOWR4aCVQ0zIpPPsLOcdTICIDh5GgRKsEZqUBaDvp5x9pUPTKxnwPSnu1u7t42U8LNym6u38xV5SD2IYLjTtdORc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749315594; c=relaxed/simple;
	bh=TaxPFRoZf+0q3TPocxwsGxpxJLmFPtepHkGGcgVWb9c=;
	h=To:Subject:From:Message-Id:Date; b=Ct6JRo7SB+ByDmCrMDdwQER5BcQpty/zrTUUF2xIW1przc2Qv66rA2lv24Mz3zT/+6qnk1eBSw7Y2Sjqs5XqremmIRqzSh+BPtrKFMum/O3IyPTXsWUpB9v7ceWtD3zAnpbMsx/lXda/DNL8MGMPTiWMUKsnrS9WYN3CvqlI6PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEg3rT+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEg3rT+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A420FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749315593;
	bh=TaxPFRoZf+0q3TPocxwsGxpxJLmFPtepHkGGcgVWb9c=;
	h=To:Subject:From:Date:From;
	b=OEg3rT+GTRTEyGmvDe5NS5eMbkI1nKQkgsLMfTwvZSLobyF5idwqyBiHLI9UTr+n/
	 qgMV6taS/voW/wW1qZhz55bt6lxTtMR9jeVhydsjrYrhH/LOEhEnXH/DkvZ7Zjernv
	 SB3CcE+ttGXOFWe0jZIdoK7zTQC+veiZaJKICHgYE06GCPJl9QJY7irZQc/DmjegQ/
	 qqT8TpJwRU1gvMN24Xp6QBxh501724bxERnztuV1Z2BsTvGS7dGkWGaOBXmJd7o/Fo
	 VmLWon+CBXGo3CophYAr4WudgTb1l+SqS9oQsXlb4laimxQjTrmotdA4nFGNFfcc1T
	 KezAgHtH9Q5tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94394C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931559357.7969.7475526737192825651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec04538c9f0c6cf4fed0b4e29ab10f8a19c1e24f81dc08e78417dd0c9f5aa7f
Date: Sat, 07 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749315593
