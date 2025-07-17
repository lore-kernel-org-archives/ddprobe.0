Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF454C9D
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752727794; cv=none; b=MJsMGatD+8oVa5xwMirqORDPsR7WH7lAZrnW5VLqPqHcEH+/sEnK8nOYPakqCCgz9ZFiJEccS9qaq6zfqIOdH1dHjdp98v0GkMURlKg3qYs4h6rWsNwT0To7tnQ8TUOVRdkAVUV5f0MdhCl9a55AaXrh/nZyjkx9eyjwH8d68Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752727794; c=relaxed/simple;
	bh=Km6+dkZd7YnvMXxPlMKYSpmNesh4/Eha67NQbChzCGQ=;
	h=To:Subject:From:Message-Id:Date; b=R6K2x4ob55i+lw+xvPZs+wSzuYpe+u20ssgnkOHGs0+ypcZkZVaUmYgllSyOowjwTWyyMd48W2yu/OB9jXc9+rh0UqrPMY/zuXnNDh7ja4aVrzHEdwEI1NkRF0jSGYul/x49Iq/B2+SW3C4hsaynu8ZxlmybSKtMOOdjMPYu3so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnhH+3OM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnhH+3OM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24D7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752727793;
	bh=Km6+dkZd7YnvMXxPlMKYSpmNesh4/Eha67NQbChzCGQ=;
	h=To:Subject:From:Date:From;
	b=RnhH+3OMoSIJ3Pw/jOUuVdQriJmcRP9YBvsV44asA23G7UJtWaskrtJPFGk8mh/os
	 zbpqx2CTS0yJGSb2uz6bjb5icOZmYm6b5kgpSXXvNaxDe0nON28B8BtVGvp+ZNzDVI
	 1E3oME5Ky3m9/MTU0vTzhVBGy4+Fkeb6hhKPP1QUx5repZVWM0qfto6Aj0XHu0iFKS
	 SvFbTvfO5y7DyewDc6MLWm7GWHUjwXsOzEp+Zpp7F7qQ1blpyYBvvUTqWxSATOH3le
	 c1AdtXOooKV54iK22U+rGr1PtEPF3F26ksxj7mq7gt6jwOqCguUWGt92wnfUzmcV6J
	 HBwnOxoavpiHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F997C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272779358.9802.14646785861395880076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc63d8450162f8cbaa26c374cc6a145c987536feade5c2059257b5d4c911b443
Date: Thu, 17 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752727793
