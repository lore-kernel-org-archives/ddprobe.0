Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C892EC0BF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761115194; cv=none; b=caNXBgASf7wDbmqrSAlGb8KZpfeCgGiEBdScjGyXpRwZdEk9QdO6qVikm0MW08Nf7zA/KshkyLblrnrKFva870Fwzz+plLIMOp76wGY9PnWkhx2xSAxgIPDJD7QXkwkz0LkfHEAcE7d2X2rZGsATrJ1HJUibTDKHyNWtlxIGLcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761115194; c=relaxed/simple;
	bh=D2NttpZC8T0+V0Rgf5dCM3PBpcW2vaGfkzu6ENp9++U=;
	h=To:Subject:From:Message-Id:Date; b=uZbSPyga4ligFsoK7ZCBpgx+NXYvAJ95RdDRmRFqqU5WTU8a9gw/MW/3ZUpELZdH5VoST9wHlGaGuOKwggiOL7kPcaWg8Lkoj+yYhw18ZjykdyMeLDHkFD/rOVLWlOyGH0WOSwCRe91YN47c3goVlGKmdaYAQHbG8csStMBFs8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATcIvpGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATcIvpGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1F6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761115193;
	bh=D2NttpZC8T0+V0Rgf5dCM3PBpcW2vaGfkzu6ENp9++U=;
	h=To:Subject:From:Date:From;
	b=ATcIvpGPE8hlwVkX3KFZyuv7ToEFl+9ro5OE+TvrooqmzYh9W1TqRhYJuXHJYLYEv
	 G1vM7gK2sgwT7VP+T88FY4s506vGwW/Ydkcz/FxWHhsKa3OYXQyMiS3Yo/I9NuhO70
	 x4brJF1sbBXbLLbxf7ieSvxNQO5kVcRyNkabR2rU+F/zMuuWU6MGkmuUIiQEhhID38
	 SWw/0hyGUtcacd3XrwMLo9AXWG2O5uiuTGDW84DlBs5izIFsBLyPH4sDvwFUFJiXAP
	 62YLeBAOH/3PbdL6bC3BncTQZjFmKyS+IQyGKQTj5b5jBneyIHQOQJHuHT7V2+OTUq
	 XpZFQtu9HYRDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA1CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111519358.29850.6600451688775619940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae30d795455de4fa6db58c0e5fb7dc6924e1368b51af63d357b86025707be9ac
Date: Wed, 22 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761115193
