Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B7B1A287E
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744865994; cv=none; b=tcKM8zSMu2Uq4xL0t4PdEDl8kwGPuypZglDrNvh8aVcEhyJrnld58ZxG+hjCY9LT27LImnNzsRj0gn8ejMzg5w5uXklnOvwNVCwkwNletIGI5TCAg+PS1s3oHAVMeQiqovaux5MgtRp50BTNXtDscQnor2/PtZHArIIm5sdZZG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744865994; c=relaxed/simple;
	bh=3cU87+7cmUOWE8vVkG2y0Nzbccmd4b6vjKsmwzbSYNs=;
	h=To:Subject:From:Message-Id:Date; b=rPZf+QeRr2zCvuwDHXwHuffnZBZkqHF6cjPG/WrDd/pDFEAiZIE8KoA/maVk1McU7tMQNqtgnpHVbFRbLLbQs9/MuJQRm4hHyVpP93c5Q99R0m5cyI1Ge9n89HNY/X87vH8ttNHd3EW7CA9kk6fvLPhZ1pFIyokdQk/x7Oz8yLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D05Nxrs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D05Nxrs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744865993;
	bh=3cU87+7cmUOWE8vVkG2y0Nzbccmd4b6vjKsmwzbSYNs=;
	h=To:Subject:From:Date:From;
	b=D05Nxrs/Tep2jn8fYGvTbPIerDB1B1HsMy4C3jVciX5Tt2tFNBAWNRUNaOycAtb8Z
	 n2VZ+7Gz0BZRjjwqsoIK5nO0PDjBN+i1ifmfM81H+ActLnYCHl09toAxdyyRwxfRjV
	 W7tW+oeN6Qmb8CNlo5SDyQPXB2616bvdIurysuZdQeSQDkUUt6Y51TYaRUuRHxOAFs
	 JxcSnXewQWkHXFyoVX10UUs56hvIHSuMzmEisVekuIcFEEW1Xxr0VtrnekFQAL5IuO
	 H5LcqobbZoe8ViL+c8w6LrpMFAvi50icf6pAazM+Vb4zj4V0CVs0ZKvBHS2AB0vhlG
	 q/rKOIxTp8n5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91280C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486599358.12522.5437206827164704237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b67c1181985c79f620abd931a27f97cffd10870a00f5c34c0a8e6208d8d1b1
Date: Thu, 17 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744865993
