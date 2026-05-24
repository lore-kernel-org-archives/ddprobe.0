Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFBC10F2
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779612754; cv=none; b=Tgs9anZlctxgmVL3qXB4kieibM0zLIrLtKJEzJm7xy/eDBOD+sFr1k4VMqF4qHXws0htcixK5V85DBpVf5FUBDL5tXXXIhPZuPFRq9T+u0jhXZEUnrioy8cLdAQgR+X01+5OgvykX74CWl52aPQx/qQ3a6jjL9agRXEJXufywjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779612754; c=relaxed/simple;
	bh=zx10iupLCexL//vI7wUnqF3M6PJb5c9z6wi41xdonVs=;
	h=To:Subject:From:Message-Id:Date; b=Zb0Fm8K5wRZ1MmSCyYYVKFBFnS1hCiZqoQcmBbZAIEG6tF0zS+NP4h6rm7t+8dNHiEld3TRG/dyj8oZQCOI+FUWUXuXzftnhWWQPpB3Poq3gPPbIzIArg5NoTk8ISg90tS1I4VfYWLG/K4aDTFv+gDaXINq+3Cm20pJkznHHro4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeIcS+LR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeIcS+LR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1434C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779612753;
	bh=zx10iupLCexL//vI7wUnqF3M6PJb5c9z6wi41xdonVs=;
	h=To:Subject:From:Date:From;
	b=HeIcS+LRDS8eoTA2gYUmJyiYMDssXaFJxxfQQAOmuZh+vk0K9a613S7z+d8fX+5zn
	 EtAeQDqK17H1eTq+ZnkSsPrn2s33jVuTTPQNo4UrdePrYu5GWopBjGmzmWsBKV/hRf
	 P59m6ha8VPDmU/YmSS4p8GXBDbFh+v8qJHYs6hoRDvyi6NkViOuArWUH92wJHnE4R8
	 u7b3WiH3ISXvhixDzj5hkNvI6P7xWjZdD47p9rRHUOyCXzevfWnbgxQ4Rn3jHNjEFX
	 m5NQ6pZujn6RGyT7mtBApx5uXSqiENZXxXm/j+l2Py4+j7PfLv0ngW9o0eBs4I+nCY
	 M4KrqWJFGi43A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9805CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961275368.9732.12430611366541856658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ca48f6bd184eadfc4938066dc3cab7c2150d3669c41a3967b257ecca047e60
Date: Sun, 24 May 2026 08:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779612753
