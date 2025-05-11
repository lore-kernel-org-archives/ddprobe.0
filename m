Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428766EB79
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746978594; cv=none; b=eHKXXgwbYDxgKPzT+T+KZ4W1fQ3lQ3LqqFAvEYhd7a4nTjtpO43yuu/FsrhZfhifE5/7HwQrLn7QrAq8cZ/K0yWhAzsCpqzxmjRwHUNrZSIl6USLH6QBaKbU38XJC4illU8W/uR+aey8iwlMGWXzRKUjLLqaU8PLDTgrLXlpt1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746978594; c=relaxed/simple;
	bh=v3QzCgaEmS7yLhAhYD6G/LhTjltB9a0oLdD6RmdBhi4=;
	h=To:Subject:From:Message-Id:Date; b=rSxbG9ZCEAdc/t9/GDI1TypaJNOAcd63LLd8nMYRqSroiYkv8QzOyvqSIEy4k6RNKP8qPhOtB4IrzJaHwnJhn55w7q6E/k3Sh1ZyVZr7TfvA30mKEzX5N6BFReg9Q8cf6AWSWGuSgRHyI6Br/8xEXNQbaAU4bFBtM6fY+0UG/Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnsZvT+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnsZvT+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EFFC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746978593;
	bh=v3QzCgaEmS7yLhAhYD6G/LhTjltB9a0oLdD6RmdBhi4=;
	h=To:Subject:From:Date:From;
	b=HnsZvT+RmrtGSMyh1si2AfmaWYv35fwbpyBeCFQGR2+hsWBiUBvPSr2DpYXfZyHyX
	 srDDbou+TuvGGs1kHLRAsqMCbybEolWvJhTgqGmgBjE9pSiLO5OHNERdc5y/0GUHtb
	 bULuL9gFWJQph2Xlh9cSkoOmsYlomTJeEoVtg6gS6AX0NvXcLmWFv/N5IVpCqHLRR+
	 /gv1wiumfPlGdf72MJ1rdlZHmb68Vb49+QFKFXcvVIUYjBEWnEhhZyUhPWTX4iluoK
	 DGeOqR1Np8dRzRbSRJp6AjVm1ULDrfV9wFCSZpziX/9SrUomRD6HMMkinO0431EI8P
	 r4E8avJUBt16Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F687C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697859357.21807.2541261323394579672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd922c65811f63963811728919ac5caf542faf452e02eca38c26337e854d9df
Date: Sun, 11 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746978593
