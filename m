Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456832E3380
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742706594; cv=none; b=lAQXTnzjphLuDe4bGZwCAABXD3dK+NO8m2eqFuaY44rUiXcAS5IreOvPm5vAUE58vAVfZM3BiR8sHNxmLWF18WwnCD2W1eqIIyzJgI6NyVRqg9JxQrokHz6eXoIzcGmnPSKuhcmYhY5wQcYwcPWdZSH0f/4a4DKxOphWYHKzJ8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742706594; c=relaxed/simple;
	bh=xIIAG3JzalzN8tXFoqAuqlk+iUIEc37EOHlKVDwId3c=;
	h=To:Subject:From:Message-Id:Date; b=ZMipKQ26j4qdGzUtGz+qpbVPC8tPF40DekC6zKAQMOeO0Xl67p8rIOwept1NE3VPc9dYXmD+5iDpi/bLIwyhUlClEyFWOSorzH+oq/PAg0eu8m3GFt7IbtDEnzavYUsFjTLiCKECuxPHKq4S4v9qJyoiXb2Hf6m5EgdARdKMjGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zw+KW3Dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zw+KW3Dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC32C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742706593;
	bh=xIIAG3JzalzN8tXFoqAuqlk+iUIEc37EOHlKVDwId3c=;
	h=To:Subject:From:Date:From;
	b=Zw+KW3DhxnAOABsL5hjKiEVor2/m0B9h0e1EqlsWddQTiVqiWki2BKEl/+66+drG2
	 gr1NPXSw7skMqVvBHAXnhv0Kn9NSFiFKu1/dZVtr8ps0nLu8/yJ+nQavQTbDru8m+a
	 y/39jq7IH/Z3WnUHY4H3nD07Cnn23Br+xdN8mQigmLOCT4QBQABMG5Su+mz5Cjw0+a
	 yqGHE12IiRoDjYTkKPZv3CR4Mx9tyHnOTW9gww7h7C79G+C9PqsmnDQgfnpaf/rNj7
	 UfZLETzgXUux8u+7BPEFxlY5G3xET/TONXn6yk7t+CRDiiZ6tuz6tom5OM5fQeqr3/
	 ZgC/Eha/sUAAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9CFC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174270659362.23484.9965110525798749266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feedd736db053e2c3b97c5e2f318f6ef5ea071db4ec33bbbd7e0f11ac9163b49
Date: Sun, 23 Mar 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742706593
