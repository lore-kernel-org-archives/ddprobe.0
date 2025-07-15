Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C2822083
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752541794; cv=none; b=crq4oF8xRjlACRm3gN9uGU2ve1v8+2+25R6HrsJ2WjEEXw8aP3rx5y7kHAZi19Pjir5ZiR5sFem4lAzTHGhW/yRum0SSgh7+m5Bd0126HNDhevAmI1nF6YvJc2CxT9V2DCOOSp3CfSINZu4IQTfwrI2cte/kxMBXXc9TtZ/7+v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752541794; c=relaxed/simple;
	bh=3KYm3MKJpx3QtEMYoB7QLgSb8SzEixS/SQewZZqGud4=;
	h=To:Subject:From:Message-Id:Date; b=uD1FbmmnaFePxlXB4OkvzeBSz0JrcOJexn9cfC9AnuUHHTdIBigLYcnV4kaf6wosMVxSixLVYlv1k42vH0kQaj+qEvemPH5NnwNjYDj7UZgM4jVmThpziObxHeB5S7KuSAomfIgJKp2yAUKSyha9gmZuJVTlAgtjBIOfcbBqd7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpkdYL7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpkdYL7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4598C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752541793;
	bh=3KYm3MKJpx3QtEMYoB7QLgSb8SzEixS/SQewZZqGud4=;
	h=To:Subject:From:Date:From;
	b=EpkdYL7D6LVIxXh6O5nWmCu4Ujtww+kzDiyuKMnEPqOP1hQI808YV3AT2Lv9CfEg9
	 rBTW2CxA8gVrOgwlZ7P9KJys08e+kmgGfT+Ga9aYZBcvaHmTW4t9qlKE9/N35x0yAV
	 7J/ANLySCw8ZrEPLh+O44xXhIrOfnQ4Hf8/nr16baSry8zN+JGNPAmW1h7NTE0kkhJ
	 LdLLbNUH7+NQqqAAGezs4acKHwiN/QU4xp8ADRgW9RzEIrd48tMczqeXcQx5A5c7qL
	 JMI01AZ3tTuxxwMcloopOr8cR12fq72rDmv+4kyZmEUKsGSltf3X0LxJaCL89v1SWl
	 QRwoUS3wPLywA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BCC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254179358.7547.4063612924699487233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d6b084dd0b643e32c6c1444de975119a18c6adf4fb929b08e2f5ec7e9c19e5
Date: Tue, 15 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752541793
