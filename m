Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E3DF9FE
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734401754; cv=none; b=r4YjMewDc++0i9BrXe59gL19Xje3bFHr8y5eY0PNHLh3uJr/17DZeCJV6S3+7wvm8o6kLXSuedljNv22JxLHz/CMKaib/casUyQ2Ml4dmrIf63pLRjkSkM4QyEHkbJd8s6Cxi3R3tif1391suAZGRPQX+zxB9nGm7PRsqgxXcPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734401754; c=relaxed/simple;
	bh=+wdEcmgPNdWJUtKE4bQthaq4y2nrc7E7boFNiumqSU4=;
	h=To:Subject:From:Message-Id:Date; b=q8v76+bnptIltodYzVFf5y4QgsM6O6sLtnljiI2/PHN7OzSI27jnEFHHZTqQStBJiOoeVvUm1I72rjgKrlIgzOKlBXU4KyHfFQLGeXOQjRLtxTPf2zyB5QcxnQlQFPIVZLcUQhf0JnNSuw19mQpZ941TDdbBOExzTbm0r/9Kc4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfvGVvBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfvGVvBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FD6C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734401753;
	bh=+wdEcmgPNdWJUtKE4bQthaq4y2nrc7E7boFNiumqSU4=;
	h=To:Subject:From:Date:From;
	b=tfvGVvBfCQJplpxDZQ05eI2hueM2wy1zI+k8dHzhM4DyYW0rGs0o1yiWep5+z5m+J
	 lF68/FfmYrUwcvzQLNr/WN1AvBpWhLhh1lQ0ioWLUTGk/vCTM6amXZU84DfETjRzN6
	 KaQxQb8DDUuE4gKbs8+gg+V5gEIFofvzU0fE0T5mrkPG4X6jxc6oIx96ZAJtUswGVt
	 hNFGJTMdkxJGDF0u4qVAxYAP2KB+PQf4oBoUhVHUavbbrlQMmX60tx3XRXcl2eE4JE
	 KoSBRFxyh2Cmyi0Erkfb11wbX/+JB6LdHfi/3Z+B3a9GwrK1Ls1lq9pvkXh+Q+dRAk
	 EEi4t3ObCnCuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9934FE77183
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173440175361.24662.996023053021266494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbb864348212fd054f75a72d3fb91ff8409814b95543dc5d2590eec2acdec1f
Date: Tue, 17 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734401753
