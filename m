Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4B32E8B82
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778176054; cv=none; b=AcTU1U3VQG2hr94m4HovGKxuq5N/wZC6PeNZWKdPMmJBVKOMSzujF7NllKQpaoCLKKvh4EiCLfR+mu3j6H/vWClc0EPkATQdbP7Sn/rEDTwKRy7wJTIG0fsYHANUJ3Mgn2NypKirXJn+1k7Cw/OURyuqKfXFClPSMNnpaTvjWno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778176054; c=relaxed/simple;
	bh=KweEsAtSC91qax5JZm4H5V7ccUmwrWxChZETaIY+jRk=;
	h=To:Subject:From:Message-Id:Date; b=Ie4Nccj5BuWHqSIHRixDQwR/RMJHe64gCBgGKPkYS8UtAgNpyv+a98RzEeXhF2yaOpeX5jQXZgpakxUBoCPq1PDW/FRsbsyt9ugGJF+zaF/nPld8qZdu0oQVNI4V2S28rWacjHypuEjTiEuoLNf6xBzAbcR1swDLfn5IuWUztbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUWzn9S5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUWzn9S5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D37C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778176053;
	bh=KweEsAtSC91qax5JZm4H5V7ccUmwrWxChZETaIY+jRk=;
	h=To:Subject:From:Date:From;
	b=fUWzn9S5Oa4alUXL9VGIZvIBYmfn1fqIZqmBbtKTTrzU65dE1+UU0EhdBJcEvliJq
	 c30i3fAHblqgIUmd6qOBOfuv6nciK2S3N7vTVou/IU+JzEXCE/UzVBcdIXUkrT44hW
	 S2Hu8lJF82AeaJEeB+z0B4IATeI/4LqBD6QYJSM2rCLQIluhJ2OoVZa8fBSjBFfCm7
	 asqIkCSgSJIoJb2Y7Qmg2Ot7gwn30YBsdm6u9n4i1ujExoNJkS4AG99dI8IcgDIZD5
	 1TLdZnvv4gdlwMjmSOIJjwLUKUi6JBvylMwaXcN+hQtB6RmTVUrlWkfIWZTy/kPWZy
	 P8uW5M1V4ATBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF1CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817605369.31471.4691350746755639443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f736eef50d65636cd32eb7aa6637ba491ebc15328774df1bb18b6395a914fad7
Date: Thu, 07 May 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778176053
