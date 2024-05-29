Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462BA33C0
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 17:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717004663; cv=none; b=rM3Sw9H+lPxLekJ4ABq5wjhU3VgBo7mIBvqKVy+6BdT+50kexux8iD+0aa9K8DP+sL6S70dyjArj/8HbgFucTMsLE29aTO/3nosy7KAHgRyxAm2Sl4Mhz6biRLr3cJT99rXj7otIMRZuYxWnIqemFGWKO3pbG1Xj94zpX4gjKt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717004663; c=relaxed/simple;
	bh=br4eglyI7b5W9faBmFUREjq4OHnbhCssVGf94iSSrS8=;
	h=To:Subject:From:Message-Id:Date; b=EHk7HAO7D8uVraUg4BvbhKN7NbYDs79+PJVX34Qly8BNz8AJvlUs1nPFBVYEmcnMIS9S5QCMDraWQ+d6ydOyZRPCzV7xB5PlZPf/I2QMumedeyASj9eyqzaq79sH4m8EwYlw2CCdE7zs/wXhGjlMm8JZ5jl1PD7JD7kO64UBJZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQ7zCatB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQ7zCatB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4993C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717004662;
	bh=br4eglyI7b5W9faBmFUREjq4OHnbhCssVGf94iSSrS8=;
	h=To:Subject:From:Date:From;
	b=dQ7zCatBM/Jqeix0iI/d2VFV35inq+Gl8z/1O3vLFQDlgbuLPR0lTFYV1zU3nyfQt
	 bFHVVJZTKhiyD8u9zxXqbIhYQVe0N+0fJf/+ZYaKRTTZrvplRfObBvgFtEK5c/942j
	 HX7GzLuY7rTHpIWWkS/vmfQdzmcPkHOMdyRCc3eBM6qFhmhSoHTA9Au9oQ7QYABdCt
	 eV2kapGHxwuRQYld5XfSbqaCzoLXEeQ11fQLs9FWGkx3r9ysDB0ZpsM6jlxN2fMERO
	 3FMwYDbkMfVSXMLhceg8rHM0qtxIkhhdRQPdjN0Y+l5xi3uCIYd8bYRZS1cUroxOal
	 G2BAdqjaqOmVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45DEC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 17:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171700466279.27080.12305771011380893229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88db5978b92fcb0ca103c6087380b659cba9e728f41a19b1e05e9e8e05017c58
Date: Wed, 29 May 2024 17:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717004662
