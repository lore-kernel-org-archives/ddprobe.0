Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BAD8632B
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763132994; cv=none; b=QT+mJ0CF8ol5Hk4mFeCEkP2ICHj9Sqp6k1wmS99INhRLNvEti1N9JAUpFUEiE2hZs32Obf7f3kL7qZuPAslZyGiJvQH3erLI4mpCvEHR0ZlhGCckJNdO9M1sU3lDkQ/aVLSKhtzFPRepfH/bScJVtdFaPHmGELI8OpB02SGbbio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763132994; c=relaxed/simple;
	bh=Wp6cfXSF75DRk5umTLZEGfjr6Xh+paYFvU1wYaCCX8o=;
	h=To:Subject:From:Message-Id:Date; b=oJb79qupmiEN6n1MFR2EAd+U9yOtEelqco1mBz3B8GwsJ4cYbEHU1bc75shntQYg4tV0IQD4UGbi3H0INn6wfrUZ3AfNNe9dEzY8Tsesskbpiippl5V6R7OjSIydJp31Dw2bBmy8QOYmhFxaqqJjqWCfrr8ReUwtkyPELVvubdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsOKKXqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsOKKXqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF28C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763132993;
	bh=Wp6cfXSF75DRk5umTLZEGfjr6Xh+paYFvU1wYaCCX8o=;
	h=To:Subject:From:Date:From;
	b=ZsOKKXqz0Ro3uLcHv2CKIYpNbP3ZaYyPwOzrYD7SA7oHo0giOAn7unsEyff5kN11b
	 zauMKGNJ9r6/rc2iDlp+Ry8NPHHufLJHxaTy0Rkb4mAFwgzVvRV7rxZuQsmS5T76B/
	 ffGgCOxPjuR7txKneR5RuXipabMjzTH0FHOxbyGU/aoBxj3JMl/1ul2tLneHNUH1wo
	 ducIQBbEklVGc3IFq5JLfS9a9O8FnbtL/kwxlFCVde6tIEUy2ird35u/+JBaHhKXau
	 IGuzWIjQmqUXnn3BUTD2R47Jvl1QSUH1d4UCVJp8XvuR8mcZz5tGg5lc2ouYDTFCyU
	 MGajjHoHuMqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B2ECE7B1E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313299358.9279.10620126128836380821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a4f165782d4edd7b2e455e5680458e5b298d288eee7ff244476626bb097221
Date: Fri, 14 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763132993
