Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683BF20AF8E
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740542934; cv=none; b=J0JbN1fgM9DNMDYOD3f3syXaXPoF48Hdyx2BJ4RCGnEZ4QrbuLPIyxI3zUAWoHDefMcXr8DHvk4Nn7gJTFtZhKYNTEdnBFNKquX6r5cOWGSmlVTLlrS44KQ4maISmj72ErapQAmNKpIGq9phcKXgFyHzMQbUY2sFk1O6pZC+tgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740542934; c=relaxed/simple;
	bh=p3vOETd+QE1liyfZvJxoFmYIcbSpa8T/suSdcd+IkUU=;
	h=To:Subject:From:Message-Id:Date; b=qaiPNQOG2q6fkLNhCi5Czffj4ug7Cl96jca9WoHC7/Bl4krQA8qitOsM/j3a7/Xuu82Ikt/KkoInKh8xMVEZL3titsTBeR2HQd3ErT478bBKQbLAHmyOky1faN48OjoTU7wlv0Zxw3gxDNP9/y8uhRpPPZVaCsen/8td0uCiqYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aawwLlVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aawwLlVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7209C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740542933;
	bh=p3vOETd+QE1liyfZvJxoFmYIcbSpa8T/suSdcd+IkUU=;
	h=To:Subject:From:Date:From;
	b=aawwLlVXPJRi6YUGBUX2o5a+DHqPVOr+ooruyIiiBBwSCeqGRqG07mE4Xo+wWLkQV
	 qNFsRr445xB15FypP9u3sSQZxGekfkH/s1Rav4FCFwf9PJrA1NX4o9Qu4TMWpb/lK1
	 JaGsI3OAHPXT0ZaQ97oeR6iDDiyJ5cy+/jJwedj3+QFvTaOD5S/lvfRjkn/NjXdHwt
	 SDCmXq5+YTfD+GklnBOHeInP6v4gNL9X+T1e96uwAnnQ0ZExSuOhnKNjii0S1Qm3/h
	 L3SG3kitfi2r0Id5ItgfLSNJxnwHhQzk+5Dz6KmLQSKi33lR+Mzd2Io5ydx8OmLV5M
	 e/wid63KvzPHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1E5C021A4
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174054293369.11620.11862224812337042168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2c6a1b3720a4760188e27f316b483d69c269e2432422ae31e50e616060bce9
Date: Wed, 26 Feb 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740542933
