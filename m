Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3651921ABB5
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741359534; cv=none; b=B2e0112Bcy9laxjm9O8PB6Be8R2ECWlkivkErty13Nnz3ESrx36b8geNaFGWX4hX+GM3HQNzwul3o+6+4sn/jZlgwi8UnlgrUBPkjiYQ7nnMMiHdylhtPndUpOYl2cKMIgKqJzPWzldoGOPd+bQlV6I7IsBjUuJzGFohOkK0Phs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741359534; c=relaxed/simple;
	bh=WmFG3/jMYG3WPpCbCOGwAmYB+q1z9f9hs7jzmKkMhBY=;
	h=To:Subject:From:Message-Id:Date; b=o8OC6t94yaWfOcKP/94QJ/km+puZwxP83RZ3lhLOTiv8uwl8aiM6Lc3uhqPR7MWXDcBBRlC2XtyTnwfXO+EeliZ73UXjZCtNQlr6suLfIi4O1XXazza5lid/pHTgEtOI1VYVvBg0oQNABdvvITKyLM3UbfiebNDIed3/oQC9RoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poUBoWHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poUBoWHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A438AC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741359533;
	bh=WmFG3/jMYG3WPpCbCOGwAmYB+q1z9f9hs7jzmKkMhBY=;
	h=To:Subject:From:Date:From;
	b=poUBoWHNslTQj2weH+fVGb+1mwYe/lm6Vf0Amg0KPt1lPEtSqcIUGA+xetR6oLJXB
	 MTRjSmHIwy1KpXYb1Zk9ZtUEqercRWTZTgnWWoNZ5af1zgKJ2sG9xIPCQRSRB7v0d1
	 Adbwy8TCBOqa6zgut3o4vPAglEDAo7FzvXa6BElRQ5yiZgGqTs6oxp/HEdDGzGma3J
	 4Qrlo8Na6UjOP9gewdbt5A/THa1zhIcaJSCIUkdC2VEwtmQl5DkEO9CytkxjaWG1vL
	 Al55SxsA788lCa9XFYm1KKt3oNZPN++uLfOXfwdrz187+wUAuLvmCLRmtMJP7c2b3I
	 vuUSJrcgOfWzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922F6C282DE
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174135953359.8988.9300904853151000277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d227534b872d28ceb3cc85830abbeb5824f519ee306d58a4e671ea4f6c8d5c1
Date: Fri, 07 Mar 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741359533
