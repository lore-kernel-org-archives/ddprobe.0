Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2661552FD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771712694; cv=none; b=HSSBop97BgYxTJfss5C2KvHnfoLq6ldwZGp46F7ClaqVS0ae1h1jPHAqcwpQe8Eva0TEVkWPKx4fTKSJ7IaGwu/RBG3qM+RYQw/qfMYOCHYBPpzGF1FaGrnYdzX+OKfG5W9kbcBuDPgmwkCmAIlhxSs8Y972R4f5cfW4cmfzx28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771712694; c=relaxed/simple;
	bh=0DY8APJ0wxTUCy3bwVqoQymRVPaQ+iSt6xPgwWiO1XM=;
	h=To:Subject:From:Message-Id:Date; b=XYvXSw3F1zedcQRJnil6xnfA6es/J+pLGycm/YeJfcHGrU545hjfz/MHDS5897nRGyhvbSIfr/vkI8JHtJlcYNTy6xgcV0+e1NOBC5J4LBFqNVf+C1zJ4eWjTks8yiJSaWfFOcyIA68LDoOHSRy+hr9f94J8K4PQGQbvtYSjBAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ie+qVMVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ie+qVMVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9986C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771712693;
	bh=0DY8APJ0wxTUCy3bwVqoQymRVPaQ+iSt6xPgwWiO1XM=;
	h=To:Subject:From:Date:From;
	b=ie+qVMVko6btVyUKBnboBTkhNyeP5ym6M/6q3OxKVYN5SbSCySqcMZtAk4yp4w8xT
	 EOw0J3ZMhvCYLCi7V+vnxyUnSv1XinYaReoK1741TXvo4T65Ol/7i+WVi4JDz+pZWH
	 /JxY8YjI15nWIUYX2foU126w0+s2+kjTsLL3wNM0gQisTe3T4W4XhEjNZUEFg0zYoH
	 4vLgu2R4JA0RVUeiCmWsqSEwzBYRbb1UWYapokGSOm1rIoTIwDAXPfV0fw+SgDCoUO
	 XZE1I58pNo7HE7b5ZTyyu0tS5xDcDx+np76AqNKxk7jeRwG33lAVYmSvMupUIE7/oh
	 9E8PbvPpwl2dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97060C624A1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171269358.27499.5472342280341779028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b6692915a908de2de91376c9d5405c593a933d7dde6fc186b3d843eecb39ab
Date: Sat, 21 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771712693
