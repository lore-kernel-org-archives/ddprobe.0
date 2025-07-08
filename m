Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89AA8488
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752001793; cv=none; b=buG1+Q/RlGrZgyWkuPdPP+mHaPoim7JD0LdpkVOwCh5ckP4G6esEJlMEvKSHmiqHc7REVVN4HZ+vGFuP2XOs5qcxfy496WPYQ8OfrH8RLAWPvUg0nGSn9J5xAg2/w0OnQftSlKO9wrukdMyt5A5qDtChvJ00olxJ8Omc6Vo317Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752001793; c=relaxed/simple;
	bh=JoUK0r+7Nfr+73N1uQVoILHzfVQJgl9wJetoDPU1f0M=;
	h=To:Subject:From:Message-Id:Date; b=SsMBnrCX0bDEtyYgKtaO5g91OOMeU3xeN8fsd1jwpk7uNBGC8DrdsGN4oZRBv8XlbKXbBAo4yj/ViM01znzFcZ3gGNWPiRV9m+v3Oz9gQphe/DrTkl1St3rCfGLqNXj8kznG11tILTojKRaNmcwcwZiwoj27R0v48/gdd1A4O+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukRScgTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukRScgTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E92DC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752001793;
	bh=JoUK0r+7Nfr+73N1uQVoILHzfVQJgl9wJetoDPU1f0M=;
	h=To:Subject:From:Date:From;
	b=ukRScgTbmZUYmbYUXi+I3tIyL7Gee3zZyx+NWkMDUGiJUytYFAsPWhu36aZ4o1nTn
	 cBA1+b6Pkkn4FyyOMpjfJVb0LurSAVW1fPBONdrZprdv+Evdvvjj4ZikXuBXCO+Hi1
	 cA1VBBGy4nIy7a2Ss4KXSzOVfrWKx1vOUWQ4z26z0riJY+EnF3S2ZQhMhfkOb7gOVK
	 nMnMTIk55/SV17ubHJK0MdLKgCPVTJK4/N3AzIzCEu+xDlceeQbjjCQ8txX41cdSTW
	 M6BGCXEjD7c2kD275OLg8DuCpHsNpV5udBVZLerw1iYYaZe6nas+3tqbtw9MoPFJte
	 zLVIEvtjhL08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2CC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200179358.29735.12834567567103814317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89655eb91a2927cd22480258aebc2789aa42b2776c31942907f4613cb747acb
Date: Tue, 08 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752001793
