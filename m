Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB9079E1
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 10:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF40FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 10:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684751585;
	bh=uiXW8gm4Wsql9LVsq1ulHZWYOFuyWS8jJzKDdYdA4j8=;
	h=To:Subject:From:Date:From;
	b=XEJk08nh22AGJrNTAhLDGTFhIjf/eoRqtm6wIN8HBxbMIH6i7YofPWAAk4/6iD9Zt
	 sx5LHNcTXzla+l+ovJFsfIVNatxwudQBS5hmbb7+9UlmwsaECEUe1ZR5QE92UPLY5O
	 nW2fSkPMdmioBGFhvkIeCZn213JNTLREiXCPoftXX8SbRfEfXg+vUN01/+bf5AD+yu
	 KmeuveJu4zHUKmj9ZGcUNnjK/17HnZFllp6xE46k3tyeq3UQHn7ZlKSx8ruthyox9L
	 6PJYLcU0tMO9Mb2SAcMVlzbuB299t3BrRZKCRHurMUY7vNyvhPAG6BRRwWw6BAdGm7
	 kxcV1lxzbB1Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C07C77B73
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 10:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168475158573.30693.5573032709912805575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be002723783181a2fda2aead5a8adb7b51608c471d0738ba802e7fb0340487f5
Date: Mon, 22 May 2023 10:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684751585
