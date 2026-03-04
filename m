Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B470373C0B
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772664894; cv=none; b=Yo2wOxHxOwT4De2pJj4M+NrWA27kCr6ssd8dfRB8/4okw1DAVqZyeFmukx+sGLdk+QdZBc56Mxop4giIU1LPhkY+9xD8DfVgzw8n8/iJBsgQyFefsBQEqXB5kB4sqPht3HIURye1+eYDScMJPTchXjg0+rwT8YY+zOkxxKIk2bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772664894; c=relaxed/simple;
	bh=J6LOTtrNxmFtMucVFH3NyLGRIC3FlgUDKJnCEacqYNk=;
	h=To:Subject:From:Message-Id:Date; b=oPiFBF5nTNSaO5ahirVHAIDEj0wG36oCHvHrumOTD9XM6IfqWy+9+jgDNPtYQoR7r+basdBbatP08gfl0tuI8iH77R0zqJ85G1OyolaZylOzMY5zSVQKyH0+qlRaYekeakm5kZ+/KmGMrAWHUXlv9nLsd9/mpvlYuAS3Cx6d/fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRLDNnHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRLDNnHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EFFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772664893;
	bh=J6LOTtrNxmFtMucVFH3NyLGRIC3FlgUDKJnCEacqYNk=;
	h=To:Subject:From:Date:From;
	b=DRLDNnHY5RIAs1MDq/1QmWrIiT1W1gnIYyAy04tyLxhSWJmZlimYvNlKJjwEeG1OP
	 w6lLk1TTgIDPpFgBQC/8yC3lkzVaODfqbFFxtmg0J6kHIQaDP3dqeffpJUiA2Ul01s
	 kqvnpZffUY9At8WwDHPJ6RUqpCZRKq8dXdI3bGkx3ZiNabtCZpVSYCaK+1C22sqxXO
	 fBzz2SiAOoPbqzypDiVuPFE+bMWXM+VO88ruSjYfulVKuIWL7/mpj8eiBSNg9oUCuB
	 lq6sPvkrQeyX/v1lXFzyqd0whNCXwfQ3grJlpdcHR7mA9z4RBjYumQ3bK1ZZ2kwUU6
	 qymDlr6xso6eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B0BEFCE4D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266489359.24657.14776438683953328678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc1e89501c2c0968eb9e3c957e1b39b2aef7ad2ea8685608a5808a1fccd4e85
Date: Wed, 04 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772664893
