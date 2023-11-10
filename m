Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD89627
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C08UnhQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86DEDC433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699577296;
	bh=hkWdjQ/8b282pQv7irwHVAWSUoMemgRrR5MFM2vMpCw=;
	h=To:Subject:From:Date:From;
	b=C08UnhQHjqHyynhvJCenyU/pdaE/5h5bGRK717LDBNy2YPOCvwP5n5LKvGQPFBPcE
	 jDTTJW2dvEM/IXO6y4lT/WrtMwVLSEY5VkFq9xG0Vn55m+lsSRddrLCJvKuRt/jZM0
	 5UIiPV+nK8Jbrj6esW1W84NHG0DKMP6B6RKYaNK+u0Kf6rgRlsmqFK8hXAOlMLjbej
	 ddW5f6JAsVVi93O9D/ciESksI2k7UU1u0QyPGXX+VF0jyFckAreiE4TOweRhedlNqS
	 88gPwkp3cZ5C78ouRrslU1y7R60m+sZRw2exwokRSDZaK9jLi9uovZM/uJJp5ibiE9
	 cWpt4zafQgfsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688B5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169957729641.26843.1769575630172174951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232ec5589c93b8794891662753841df826f296633e78bcb24acd85b38e04e752
Date: Fri, 10 Nov 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699577296
