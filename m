Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB61221F08
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749716394; cv=none; b=O9hWJYmX1sNg1FKIqPQOKla22dNVAbpT17fw+V714jC4GPY10KDUseoC/OHWmWl5lVH+ptRj+3yzizFrukU0/NRXtUW0KTuLAo09FJO8mDZwWO+yOHvvjaLJOvlFCDCHlVoVmWibb9sf8rzwvSXgW8XhFWGrylw/AR8NMBRsb/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749716394; c=relaxed/simple;
	bh=YfegTXYAMn7EfC/FFS7MaYT6eKEgzgS6Z3lqQWZMHqc=;
	h=To:Subject:From:Message-Id:Date; b=naIJoeS9/QgtYVkn8u+PuZj/VlAlpRxRBYTTsDscLaWMoh2LU84HPPqnKuEq5Ab6O+DpmVIrug0bbDnj+/yRhqZFSoIhz6Chct1Z8NFd1EjkBIHRKnfcFBgH+FLrBsqvwACMmxUWvnjvTJ7nzH8/Xa8SbUNAuza4vDS9yvoLWOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELocdjTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELocdjTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3241C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749716393;
	bh=YfegTXYAMn7EfC/FFS7MaYT6eKEgzgS6Z3lqQWZMHqc=;
	h=To:Subject:From:Date:From;
	b=ELocdjTemAbBNK6mw4wAoiHcNFVVG3DmoQSfT1GG5BVDTPf6VYO0a9aI49MWsMM+L
	 j4chYLmXmWujoHtg+6D4YhDxkDrpg/p06mKyUUuh6XCqIx7vgf4RXNOFOdQ1Sl+IpI
	 3EDItyXnQ6f7SrbtJHjHgHg9iqPh3XwZJ8LeTQd3w8f6eykfT6IIuGv/E6Nj5Q310w
	 yr6amd8hNvc+trPU6UM0zaptahhPFIn99BbhSWyLHhNTmPmy95R4odbUkS3g0dDv+Z
	 VSYEynWmVCq1z3CZ94wJ3tJQmIbZ8fPyT8tdH7HfsUbSPTNianvygfmG2nWeXtgZR2
	 2HHWnuCFLOURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD60C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971639358.19615.13889618625089406890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5991237911665d303cd24e558314b86d190af02544017ade1c028047a8441951
Date: Thu, 12 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749716393
