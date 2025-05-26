Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1A672632
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748227194; cv=none; b=uFl1UabNQoLDxcpocecZVUkPz8O8G3uwcFA31T5BI3ED+BUcoEXx0SsrPL+8ZK8b2Jbe/5vmZJmezwPA5vaHrJb8RYdIm/3ruh7/u12KTbAyBfG3lk1T8IgxiHJx/9HCgh9q2/Bo67EHVL7SiECPqda2TMtnvaBqlQlngESqUXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748227194; c=relaxed/simple;
	bh=A+MmwWXmq/F1Aa6xV5JQRMzQCfaF/azyq4O8sPZ9KiY=;
	h=To:Subject:From:Message-Id:Date; b=syD4s/2cPWh8/UPebUNXdqfBic6uHVtFuEmLc4FrHcILYuWj3rAWFQUQIllezQhBeNg1jrKvol+ZWJtdPbc1eGaa9CedAxqiJgkUfCw8KChImGjZioDwkbX66eIk1buQCuiO70yZagVs87pliM1gofZqCRzpv44i/EznMD8iFXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHzjpiBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHzjpiBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E1AC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748227193;
	bh=A+MmwWXmq/F1Aa6xV5JQRMzQCfaF/azyq4O8sPZ9KiY=;
	h=To:Subject:From:Date:From;
	b=UHzjpiBNI3KKhUKujfFnDaJVtjzoN3+GB5II6IB2Ja0oWMXrrF/i/2RAT0gi7Y5rz
	 SuxYv9FIILHZpFAeI7PhoEAlyTI8epccDkEyThpYwPyYJZ/EybN8gG9VcIuQz9coiQ
	 qdfbZIlEP2f78EAGGN8Vidf3ey/8A/9IxzCRPmNeqKAnxqxIibx9OYn+Dq/Lm515N0
	 9PZTR8qHACfKO1cnQQVh9ZK/8eh6l0gNySfkbZ4E7902+XRn44t3K/maQOR00oYFQj
	 rir8T2cc4ukE+KdsneOuMrR3InplAZNUo8qGKyQ/utH+kYalSWb852htNcxxt0cJkm
	 Jj2CCXYW4r2WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E61AC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822719357.5106.5894583822845265310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700827395370b2febca5d58eb9de36c5b72fb1ce69cec3666d59b94bc987f091
Date: Mon, 26 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748227193
