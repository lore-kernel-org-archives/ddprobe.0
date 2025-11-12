Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E19338929
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762954794; cv=none; b=iz4gW5Oht/lm9f+LI+sDdHCUEawSlU0pnWp5sFVtFUkqBhJ6tEQJrjxRWrvc1Gw8yJV2n7F15gGyyVDUIhxH3cK+KaoxyEKQIcHhQir7a3nlN5Tch+1+fotTVX69DCWc5dGvuPtpBTOxWokVm0JJTdPIsvDx5v14c/RI9rdx7y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762954794; c=relaxed/simple;
	bh=vR+8tYsJQHnewds8CuTwooXgPVZBD7rhP0YaWHZIAI8=;
	h=To:Subject:From:Message-Id:Date; b=UClaOHSikJmg/gD+aL9skoBmTjaqxRGZcVTSybKboDcAzG7XLv4zfvuH37SHJ3NtkK5DoYHC2192ocxxl5rrM9EVZbhBEyVpCa7ilrD2aV2A81uAJf+ODY0qC0jVEyMOyYlp1TzBSy0KJHxMmzOBs/D6jUHHU1J6uHra4RlnyAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n21NDYiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n21NDYiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A743EC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762954793;
	bh=vR+8tYsJQHnewds8CuTwooXgPVZBD7rhP0YaWHZIAI8=;
	h=To:Subject:From:Date:From;
	b=n21NDYiSKE+Xx6Lt38gZOskhlNFLk4w+623HiSfpocdHe/Q59pXRUfQQOBQ7gBBCM
	 e3N5v/QObn3CVI6CRpxQB7PHDOSB1CEbeNgNZkqKcI1yeGLi5p8jQ5H9lNyJIVTVRk
	 ptkT97xtwQ/VDw5bQN0EVtfgc5TA5ADtI2qva9t+edPMFPfvt1H2Ys8O+XmBYfEV7B
	 oro+K+T7JshKLoMnBJCFo3xCYktvsQGWVBhde2NFhcPGZK8w9fOHdonyNy8PhpUuIF
	 BEsdVj5OPTlNck5YXxrlCk0eLOcxElQ7tp4uxeBDYJ5w5G4JhTZaysAm/HnhiAlTSj
	 R0MRLgNZxhbEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94230CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295479359.32619.5320829716411100212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8416ba1de33641cb285aaddd1d3c015d57673763730c5acc94950d4651ac1c02
Date: Wed, 12 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762954793
