Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242BD280CFC
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771988694; cv=none; b=OO1caRquiYI+b02TFSpRvJ7sUBdM3gYT6jwsZ/JH7XGMQOghBXnaoba2Lb+jjqujqSDrsXQtt68SBNRdAhNM/CLtWJKySgXq+Rz1v7cozxvs97/Bn240PbJLUlHeOBHu51xAEqErCUlA41mQOpdd2kWC/iSgv5Ivd9pYmRoxGxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771988694; c=relaxed/simple;
	bh=VxqH6eQS98J+MJUq9w7mYJ3XFJc9KpwmsXbnjMcItms=;
	h=To:Subject:From:Message-Id:Date; b=AH1uitG+K+ZfDwciQ1yf7+IJFE8iTBBHE8XU/7uANoB3luBr8wThTpCFuKnM+LLQrd0hTsLC+b6WhLKS9xVmUR8OsD2xT1rUPSjGHFqGBLcNL4t3LUf6Nfs3spfJFG5JqkQllbghO2zG1UNn9j5KV5NK3ZA9sB8kM2Sf3xLmnhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NddbpvI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NddbpvI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B7AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771988693;
	bh=VxqH6eQS98J+MJUq9w7mYJ3XFJc9KpwmsXbnjMcItms=;
	h=To:Subject:From:Date:From;
	b=NddbpvI1VzLiz0SG0bYYAb7MOQOYvpQ7FWh3cWaXA/n8+aW9GG4UNfMPkIzQ4akTU
	 lo5kUsn2tQj+q8W9fuHLznwEjfwyH40mxgMWz647UJ8DhESDwz35cYp1/ba4rRQ+kS
	 Z/zjeHv+YNwcLMvMR8lFPAUD4nLnaL4zuPwbGDvLHUXjOUI1qlPQym+dx6z3oGRD9r
	 qxiziqhHgw1ZJotY+diIoI8gSLGTqO6Vj2Ij38rqeOWL6eJiEhJgVN3mbwIr9awsVC
	 6PU9q52V9rhrJZmRSSXeTIbvE8K6nizcVcSigWE+yqMvTlWrJk29lqJWkWWZl55yhm
	 1917r3PrBxCPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D81F55449
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198869358.20086.3856586347935522848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5938b1574a163f352cbe29e7b94186eb5812f6c35db04a5c16b893a4c6b96f6
Date: Wed, 25 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771988693
