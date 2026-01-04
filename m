Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223571C69D
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767522834; cv=none; b=L2SFhLdY6ellkFWannDHnvTAcjPCncKiMty6qY2Niq8IM6sITJ3MNPJjYgZIVIXCe2/NSbgYTePha+rkt7nBCylHJ93DTVDwrV+UlFjElOl/5UIkqegRuz/ij5JOk1WoZs+aAti/fClIuBYyHex5PFODqtQRgLqVncumenxo7No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767522834; c=relaxed/simple;
	bh=j6t5CNGGrMDcfLEVwNSaL7lWR/4we0gBKitOrAcNttk=;
	h=To:Subject:From:Message-Id:Date; b=lID9rH6Ki1eOWMCjYxn++ifgkjIuW4tV0MITKEJ1fCeIQ87UK/0JVI7aGKPvhLfhyeJ/XbF+12AUk64P7fZq/nKkgScQDMx13VLvFj+ronqHNytRPwavXEZ3wHAvoOiD3M6gQ2JSuY0b49GVCZCyvWJNUL9RwINig0o7yiR2/HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpE62a5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpE62a5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED88C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767522833;
	bh=j6t5CNGGrMDcfLEVwNSaL7lWR/4we0gBKitOrAcNttk=;
	h=To:Subject:From:Date:From;
	b=bpE62a5OqaN/36dv4r49xWn0bQouKnkmfWqaKPOoWQoHH/w3OZg4tRefPt/x5PwFC
	 0ppS1SWal8kGUg+qwWl9EGLP/aszGH6V7kTT7u4v5/MSaIjITNl/+5hmLhVS5ZNYUH
	 K5gLgRzvT3zIFMV4dz8/Qt0epcc14O+yvhDp29YZRQ/iC4W1VZRE6gc+o8MKmVVm2b
	 vhjlduxSPg9qzXd14PY2uae3zckOUMF9kJtZzmVOgvXs+rKUcchpJbVym6T3aUtUQx
	 0U/oymJ7sjQMXg0vPpEjMrc5GGRS6OGJC3v42XzzQPmuvq2pv58eJpHuPfRgy3iKM+
	 GCLbnDf56I7Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6D3C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752283357.7458.7254232329008756447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20258b0403f61aba7217ec4d7f17b0c1842c804a5f583db5999d6b079aabb666
Date: Sun, 04 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767522833
