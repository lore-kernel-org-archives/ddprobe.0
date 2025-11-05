Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DA62D9784
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762376394; cv=none; b=AKx3ZagYW+nq7CR4/oEWlIei+nUaLVn4Bzk8twxdWadBDQ1B55/Jrc4rUDU9e8fGMt6FwcY4HxthWQflo098mIAsprAjrJPP0CuqFwn8BovbQumisq9jcH1BZenZm+EE0BowcEaUPHiJ7Q5s0+nTzg4mKS3WmwULwjyWJO9h/qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762376394; c=relaxed/simple;
	bh=7IcFDlf8NVGv7dw/cWJnsIYr7zL84hjMeDF69VDdCao=;
	h=To:Subject:From:Message-Id:Date; b=ikUnvzwX1omHdHIzj+fbpUpAVwse2onS6RKVIfwthAoVQZq1gej1w8SEZZoUOcS/SxT/Sef1lISyTyvY+464MYUvcGVRxO6QUNXN9AvwRvoNTbD8h7ufI6iDkIHt2AwuAQk5vNYX/Vn+dG+NdSJ/FfFwI2xoI+n9UT4L3+5gmAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YESMSH8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YESMSH8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DBEC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762376393;
	bh=7IcFDlf8NVGv7dw/cWJnsIYr7zL84hjMeDF69VDdCao=;
	h=To:Subject:From:Date:From;
	b=YESMSH8YdJu4OTIYFaaDTQMiS27wJPZqIDnXG9iAyXmBppJGePe3oKN7oW8Ucqjkk
	 h6wxUCzUivdSVgfLxOmFGyw5j6hyg7MP588fsHql2xbAC6Y7w2bHhccmFNISrd+q41
	 Bq5R1gv0ibgdjvua/S/ZJlm8+TpSehQzNi/OWGdFpbIPYi5fnJXq5ilANSGQDk10p6
	 0WB4FyuJRJPeQcHXXsm2JaMbZxwFc6xoOGDjaXE3KxoBGenO8pO/zH1sTRjtqDcnog
	 XzEJI3PDBa8HZzR9fApQnEDq8byPe3TnXJWBT1HcvL8HbWnvJA5gVT6fnj6gnhvUlh
	 ilfDYn7p6klNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC11CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237639358.8063.7097991524093121104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ebd3d42b61f5ace98498940bc73ccc74b1803561a7f9f7d9700fd154f1fb52
Date: Wed, 05 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762376393
