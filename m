Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58891172BD5
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716915263; cv=none; b=S1WG1FeY7uti+JFRF2FMPHnc9pnqstcoCp+FLwEFupxuBPvzNaLM4C9o/jk90knOy4dyGVy5Rn2yW/g3yDV4pEQz7+cMRFaA6xOsxNjx4eow77TlnCLawmFBOjnu1wpPCzOC0JUvvnLVhMAiQ9W60AN/tE0Z1JOCdRLFY/85Y7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716915263; c=relaxed/simple;
	bh=XvmVbbEpR2JgpB2Qx9BAcK8ykG1Zhd9bscfw6MfZ3is=;
	h=To:Subject:From:Message-Id:Date; b=aUVq/g4zUOSV9e7AebDemet0uyILY843UGmGbzVQhExTEH4yGEDQZuDF8YglbKN7sRaULZBcscPLyFXS1Krufak4IP2RKwCx9Kb2CqlsLk9IhmmYQW8GYYks229P/B/4rKDCllIfC8GNXVQ8K4NSeGmL+6diCuF9LbHTLiFPmUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f10LHPgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f10LHPgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B2FC32786
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716915262;
	bh=XvmVbbEpR2JgpB2Qx9BAcK8ykG1Zhd9bscfw6MfZ3is=;
	h=To:Subject:From:Date:From;
	b=f10LHPgh6UhtvqWII49uDZCHul8CM6yLEqKjAxEbEaE3DdTeackbqiRX09cOhN+OR
	 3h3DPZ6ApX7jcEUeK1hANntrYIqEjW5/+feW6Haf6hHNAYZ1p/+3N9li9wyo4IWP24
	 S2A8wDLBryXiSvqAiHkJchZBVrjvYosNoeKMmA6xPJKCbAOYnMp+vZTsOt/uf3Azl9
	 IyAV47+23kQa1ErUwxoqGAg2Z30fA0V7NNMlgn1JLKsbjalBqtgqaB7ymhM6RiuexM
	 jVJzqoZnn7aET57Rm4f3PtjQ7rXX0pOWBytsVM6qMaUKMQ/YGCCBt2hiu6uDWmDqZO
	 OCigruMuZlCGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C76C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691526277.18702.14566133851719831659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24e3f4f4fed822ffd3d3b7296a439d6f088b8f763006c54a6264a21e4f72fd2
Date: Tue, 28 May 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716915262
