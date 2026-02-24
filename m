Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1CD1FF5E3
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771916093; cv=none; b=lWazy1uLA1dXetmRZCpuoWJpOWnyOg93hxb0uXp39hRYhnTpg5H7bmZoQiUoMLY0hZ1vyeTgZ8ZTjT5eF4yLlaqRmsuMveSdv8lP3ftu6p+P3g8w9WmBjqmiMHd5Sw+kSvVeT+WLL4la+GYf17amPF5h1+/O8CqcLytp9/ldQLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771916093; c=relaxed/simple;
	bh=miuufyN/7ocxU/pRpN0vMviLPq4L+rrsdW5qYDABO/I=;
	h=To:Subject:From:Message-Id:Date; b=Box7zWkvtMWQTWJorKhDFR88mAxgv4QZQT6DdqhOH6SRxwdmjHygBJmdzG5h+DCQyncW7708nBIZ+SxUJsAbbJrSAJldD1MK6+Yad4JWzFqgoX0ZHzE5V9dTA11l6waYTobnxa08gOtMzNPXOWIJM67UHHIPuqgkswxvwKFsvjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEECyjAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEECyjAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BCCC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771916093;
	bh=miuufyN/7ocxU/pRpN0vMviLPq4L+rrsdW5qYDABO/I=;
	h=To:Subject:From:Date:From;
	b=JEECyjAp9Lznqd+Dx0RdEAkXYFz6npaGU26WzYHnje1ixb3XIZANq8bPcG0PdkUoc
	 wHn0sek2ANXsjd/BHlhf3IZYNk9+i9Xrvn2Zl3M4H1Si5OusZWqQJTu3O65BTbfPlH
	 Sb8iysre/JySz7Y5dTCCnC9GQe6mUHR6c5RHPGEwunTcPxSFQNPBtn3jKXK4AOZF7W
	 QuLPM923Z3wx8/JfaKSoojmQ6U6P8K4iwKTTUWsD6eWuyiZhqxnV0h1t1bi1w/vemS
	 j6/s6EhAH1v1mahqxTJFaWeW0tZjhszpC0PdJUYDjRyoPsbfjKaEuEBBI0TVPXyL4P
	 zCB8Hf7WgZbxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A9EFB80F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191609358.32158.1710907470027831450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a0f37c1766fda5b4bb911f190353f0563bf10be436fef097a23a6a4317c1db
Date: Tue, 24 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771916093
