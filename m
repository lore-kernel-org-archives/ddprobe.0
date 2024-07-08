Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F221E898
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720452983; cv=none; b=MuR0S1xXn8NUT2BfluKIF6ZTrLz67UD/h3FtDexjyYVhhNGwepkaZ883FYClRfyLXYWvYDrgRL1J/OM/2DbM4s+HTxjLFBNhEbZf7Z5vuAPZRKxBJEolBfw60PZPxmeXoL96m/d0Jx/onTpLI6eNCOVGRfMgq+c0y6eFi4wywVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720452983; c=relaxed/simple;
	bh=OZ1ihIXULRzW9ECCYO8M2bUPgrTKeY6mlN5N7z0Cjf0=;
	h=To:Subject:From:Message-Id:Date; b=peUskGyMlJfNFDW8GCHVQB4t9oFppzpFYzpzVtLFiGEGsxpmXmlBtSHatQ+K+xuln1sW+zxu5yZl4utQYb7IoHEd7tonWDq1DDcIG9oJ0OEQxz8/2KGS8ua+Jd0es3ialQzBmwIPQsc1oRdLfh724deFxmx/DsmGFRk5/gds2Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSvb/6r/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSvb/6r/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F96C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720452982;
	bh=OZ1ihIXULRzW9ECCYO8M2bUPgrTKeY6mlN5N7z0Cjf0=;
	h=To:Subject:From:Date:From;
	b=oSvb/6r/nykuAE84RpEPWPSCehawbscjndR1ZBMtRS8Rq0bs8EAOz4J4VouA6PLV5
	 shzGi3j4H5ztVdO+rGlmgzGPcNeEPdRQgMbUuGk0O4oWfl1uNMKtZgSSUFsALN3S2c
	 20A6k3oW8rRYBpczWO+Z3TpCIyLTCmlUP8Glbm0sPKegZ1y5GX/3s711wo7JZnumjd
	 nwX4BbdKGj4qyLkYkv2KAb6qHHxvJilKLnZ3pUUotUMi6vMfq6FbHi1Jpimo4uLE1T
	 g1+3Kcytzd1v/6jkRoc5FB4eBSTULfwzc8Fvmc0WHBVbx2UzkYUMJxtx6h4RJnTnYW
	 P+KBYJnLib4bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF08C3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045298277.27890.5327163001195034555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e773020825a7aac892349955099dac94775b051b4eeafc16a72dc96cf886e9
Date: Mon, 08 Jul 2024 15:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720452982
