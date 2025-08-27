Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7802E63C
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756328394; cv=none; b=IA+X9AR5Vxfg/1ABL51oBTp51k4KrMCz8/huKQZdmvdfc8gRS/Dc1tAo6NPSKUBf7DeNGn7tGsYaheZPV6+caP3N4o8d48EByV2kOeoMDvfhq4L2UM55xHZB9UlN4MdKXGBqX4ybOT2POV4V2nzdHcE/cMdY87pXrbBSm2AtX+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756328394; c=relaxed/simple;
	bh=u+vmCmyCoQAh83CyYYh0xOhGU/gFfHEQ6BL9HQIClrE=;
	h=To:Subject:From:Message-Id:Date; b=M67DW/JbV7fj99iu8T8KCTkjMryOZXaRtJzwJ/3WOVPqJ3U6ektyst7oaCaM9f6OVYm4AqZyLdyYDRkoviVMI2t+fJgilcyCMiyGXosDCQeKqGF/7WtyJvHubVHezcjHJ8KM43CXo2Ug4LaFNKfiwbFf3TqgOTnyMZoZ+wnTHXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTIa1NWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTIa1NWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7B6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756328393;
	bh=u+vmCmyCoQAh83CyYYh0xOhGU/gFfHEQ6BL9HQIClrE=;
	h=To:Subject:From:Date:From;
	b=jTIa1NWMQg8P8xcNCCv8GzSynssSNzIcn4EPhbIsk95yGgsKDfCPpx7MnbP/xIk5l
	 hAciyABSUxRdFR8TCtA3FrtkgFMu80MnQidKcF6BmLSO6NULJmZYuJQKmVcwuR7LRS
	 TFYxUIe7IDxPg/ZsjNyHhivLiwDr+ARTEgCV8zJVEVrJpKfN0XPvewgeMgCTJAI7aB
	 bwYAKKNx4zS855ZbgEZtPOnB02dh0Tf4SNt6wh4PuLJwpi6pcSsbWOunDNAyevP3WO
	 Eqe56M2KOh8HRPixCK7vaGmTl25jVS+1P38m7nZ0+EuLQqSRzXWJn8TC2PsVsyRtrb
	 DqNq1kwSDsInA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2DBCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632839362.3407.3091810331811720167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dbc635b9ee9a8bb3eee404029c68cc42765c515b1e37ce6b6a128a1a538258c
Date: Wed, 27 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756328393
