Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEA0166F29
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737134754; cv=none; b=fNtdQXkbE5IWOcCYtnBDHnhnQljdAoZx3C1xDBKKcZo/S4UQStlJR9MS1ItWfC9iw8E5ZetP6ZPrlm+y8zX4c6tdeirg9zf3JoxnJpJuVEAtCOB7OJgcmo9LLwa8Q7wrOtAm5do8Otg1oc0ct5xr9vuwdXMOhPeQrlZfgdUc2tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737134754; c=relaxed/simple;
	bh=sOWNUkMKZNUps5hmoodcuTFa5hU+iX2TdoOA7RbEvG4=;
	h=To:Subject:From:Message-Id:Date; b=swwD7KYy92VwZeEjiFok5tVMgzpScWH3FjXd9aWQPYR4FpMZ6t5k2veFUP9E4b0z5Ppgs8a0fqsfsBbDVfjQkf1F6enL0DqMjkOWN39p2aAYzDkMw9Fv1eGDagUprPQSsHKylr8+Su54GCu01UeaaeismE/vFGtxxvQAq0M5M5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LH2Bq7FI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LH2Bq7FI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF802C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737134753;
	bh=sOWNUkMKZNUps5hmoodcuTFa5hU+iX2TdoOA7RbEvG4=;
	h=To:Subject:From:Date:From;
	b=LH2Bq7FIanjARXz+taK2n8NTQuBADQ/VstU/dXpkL+IgBoXT5bsqD7VmQ3bzvbj86
	 mC6Q2slaMLXtVpafMI2qm2N18Evf9v5jjSn0xptDOE/yKgcsdF3rRX8K0yX0OZreRI
	 qKkx5aay0YPnJBbO9zfArt2JOkjc8cjO4HFNrPO/E951AqYouDSs2WKWcJEJFhcZ+M
	 C+2u5Z57r43WnvFl55OlSfEvZ+UhFO46ah52ESrSsQ0fZD8Cgy6Wkuk4B1SR99aguS
	 5z4IXvGrQ2qhedUQn2Pndp6TAho8zCoij1K98Pbu3qXZjb4yHJRRXon9xp63jyJvBh
	 jJO7fGX1oYbaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E27C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713475359.23484.6603955838404644715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e7f6df637ec13eb4195b0780173478a06bcda9e0c8898a0def5034680b343af
Date: Fri, 17 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737134753
