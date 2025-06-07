Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8A41C6BE
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749276595; cv=none; b=EBO+/UNsi5gF/ETDQYh2NL0uw7nv0MMVeRJt0lqIaH/3XDJfcIMopge0Jqw/BEHqmFy0t9MOdZ00d2Ttu+0NE4yvwVKX0M7q28YAS3OAIo0UzZWFptu8ZoWGGKmqm+G8LTfydK+ECXbOAiYZcGpKM6DVJ6KqYUSzx3DomyQWg18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749276595; c=relaxed/simple;
	bh=sjy8rDDuWPFgFHDpkeWdLBLZ0Ryv76H+cJX3HvBUBw0=;
	h=To:Subject:From:Message-Id:Date; b=a1X96dXBn0cbNiPnGT2K0mVMMbPLFD8sQNnhLfjTClHsKe4ej0Or1zgQdp9TpL/Jcv0bvV83aD8268Tg8sL7yyzcCuGEeUPgLIEAoXPSqT9N1p0/DNUME7GtGEXiTX7jRHaGlPulFfPHskrGxkUQ9lyerz0tXJoiK1mkQlo2WyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M48vcCBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M48vcCBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F24C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749276594;
	bh=sjy8rDDuWPFgFHDpkeWdLBLZ0Ryv76H+cJX3HvBUBw0=;
	h=To:Subject:From:Date:From;
	b=M48vcCBV4LtV5aGrVzPPD2VX7d68vNUMJ1rFUeE0AzKkJ1BmjpV4bJopXyCGrl2v6
	 jGJvh3Dg/73fsNBfQAmz/jri7hS1E4ELOaYH+gJdIpeIBjpwpcozB04ps15JhFASSL
	 Xh3s+jbRdkNEXdcPibYRh7JrUKBwi1AjvoxXsphNugDWlirf5WjylAvoQM65TXM+3X
	 gl9VAACnVlc+sh6bpmSR1ID6hlv+8HHws04ROr+yKdmZTxIknJCVcLpsokVhR5StXk
	 wOA+6O3rrXFRS5yn53l8aoquimEL0w4cWrP678n+SWgGG3iG7TyF4sO7Fgh1AXJcWx
	 ZXGnxBPKds2/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F906C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927659358.6419.2896443967300711213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b484184ca51f8639314dcaaa860b0ef3026a62b6e6ec9621f282be977641ae3
Date: Sat, 07 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749276593
