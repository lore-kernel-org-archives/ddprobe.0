Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2E87082F
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742857194; cv=none; b=m68cxBlQIqnoDIpZTnriY+0HeEPPJaPasNHnN4ddjVFFV04lX0ndyE/pxnq4s15QcF3EkKGKPXFY1G6LhU7amupW7G7ZyX8A3rOaBcslI9qMYNxMaH5jmoslOUoXlnVs9hs+9wu1qa4ZdFRpJTEmvE4NvrvsEYNSc4+sXj9XO3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742857194; c=relaxed/simple;
	bh=aD2WsQm+2i6TQ7Q9qr26TdgX+SUiO9kqFHBjwCvEzio=;
	h=To:Subject:From:Message-Id:Date; b=YUiTWLwF1Ow7kV1iF6q1k2KPGOF7rBcDAMy2T64B5dxx5d9Y6w3B9odIVzD1GnJQAE2XMkz3gCNmXvBRDVmG+ory0DVkd3auCkkFhvVUdUUZfcL47RTlM5irF+kZe8qvh6mmXzF1ygp8Rif9QZscmZ54WJpLoofnlkyZY6r/hWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSatc659; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSatc659"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83CDC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742857193;
	bh=aD2WsQm+2i6TQ7Q9qr26TdgX+SUiO9kqFHBjwCvEzio=;
	h=To:Subject:From:Date:From;
	b=iSatc659je8fhWZEhCnUiuGLuTx8w+bCNzLDGD0Iziz7+hFRl2T3GRE6HEUAOByr1
	 iCGwLNlQHw4jevFEpiwAh1/cgSclBU86DfXKsr/uz8vqcrBv2JwJqbCOf4zZHwA14g
	 uXRUr6HNHX8LWNIy8M62ksjzXXoy/0YsA3hOLv9lf9DYWSk/S2FGzC/WffgkkdGD1Z
	 Dmdf/r8TN2NuLqdWj7bgqLhw0+bGpSSJ0rwqsJWWbIqtOLPoOJtzTXI8eJOu6OKi6X
	 KDcr7yEsAylBNXL3IMg8iKJh4UP8DeT+ys8x4Ovcl7svunRkiw0z0g2lVxTfbj7Qyt
	 ooNOsLqNTbC7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967B4C36005
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285719360.14642.487743972203870184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65c3062366a640d90adf316dfa3846d0b3c007bcbe6439408e4260a9b1905ce
Date: Mon, 24 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742857193
