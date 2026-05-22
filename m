Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C520836606A
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779459754; cv=none; b=Q7WYAHVjdKK6wp8sO88hqv4Pb3uif03cwEA68jBoI+/LMNOMOWCh7uMH8PFiG/8OugXd8RReC50mL0fZl83EdElF6KaZY/rSuuYvIFKDl6ojLqDEDcOjqCXQkbffyVB5IrMMvYBnSjlwW8vTCVxkLFHwqoLYBl3sWdhiy6mXdmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779459754; c=relaxed/simple;
	bh=g+49O2GjDoY2LIwiztihQdNlVG7iHT/a1ktekwuYXVE=;
	h=To:Subject:From:Message-Id:Date; b=GFmI3T71oGDGdy7g+ydV/149ymXZP+zYdEgJSPI+vVjnQSY2h6FgDmU2YwaZfM3RyQ3D25UQO+7Q0+OfC8iKrQK7/T9DjJdcBBlUuql4wsyfFH5QFWr8TzSbLkyfUeru+GeP2zydCv0OtN4SepFlqgH31gHf02FVHVVfmOXC+gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObTOEQH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObTOEQH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2850C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779459753;
	bh=g+49O2GjDoY2LIwiztihQdNlVG7iHT/a1ktekwuYXVE=;
	h=To:Subject:From:Date:From;
	b=ObTOEQH6bCQS7aYk1CMJq41r3MS3Goufv8cfCDkBmVqpMgwV0+JNYajJY3ugQ2Q3i
	 s14ortwR+cJyILGO8U5dX8V4D8wddJhEKiEadscCQVcQCcdFK3c76Cz2w54EuGrWjo
	 gwyjRKS7Pm1hL/hgOjuh/ZmYuGpeyFPYbAOqSVh++W62Fs2Oc+lzmYn2iQy7YYjzX+
	 64tJFN/p7QFAwY3nac3MzjAx3gM7lF1qdOIucrYC4j+LYdq/ZPM5sJtSG7sHK2N1j8
	 MxnVKIQAUFn73NXRn1PFwIbabhmJOfpFkRTbecYId2dGYI/eBYp7niF1sE8W1eskBE
	 B57MpRDz80pjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A957DCD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945975368.27249.9265217574308213077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fabc063b37e04ad1e47c6573752f623b1fef8bc8f58c524e9e11a1bec20a9474
Date: Fri, 22 May 2026 14:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779459753
