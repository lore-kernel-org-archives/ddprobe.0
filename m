Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242B02DCF7B
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765650174; cv=none; b=NeqjrIHCAM1i4KIGcNTigNXRoPWEh1l3aOMZGIEFsbR7GQS7O9vqZtkHn+DC4OEDGR9peF7vJacqZyxD7pc6BAYl0wrbbWJFp3fvwhL9yVirm8e1omNkWI7o9hd8wINIfM2XkngFMU5MMkAVor4Sx2xpLInKrpgmLD+Ccw+s4sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765650174; c=relaxed/simple;
	bh=oP7/P9V+9IXB7Mdbjy/Yqr4YD5gg8q6XIBTBZ3vsBIw=;
	h=To:Subject:From:Message-Id:Date; b=TI25aeb5WAzL989fIx8lJlpqqRJI3Q0UtKhO83oKEUnyP4Brc5ja7X1tflJMxhYY8V0w9P4YyFQj/gXWsaKHxxZKxUe06zpTCgkzvI72i3SVMlKLlP9zU1Go9xZkB18HNmVaf/a8wNLasDxWXS9fxKS4/ylQBKh++JY7IA8m/LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrPAKbLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrPAKbLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FCCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765650173;
	bh=oP7/P9V+9IXB7Mdbjy/Yqr4YD5gg8q6XIBTBZ3vsBIw=;
	h=To:Subject:From:Date:From;
	b=qrPAKbLWB/iNv07+7kSzmen/2qSDldceoBbDsW9MZJw/QZtxkUNvL12HJA/JrBsfy
	 84VistEymetCbdzRLmee6jPOAF86XLMSEoVD4v/zLFv11OpbB0940wATal6uXOTnFL
	 EDoDKVZjoCRKj3J0YiF800gv5Ei9Zo5iEYshr51lgbKaI95ZZsV/sl+EJZqHMo1YFa
	 fHyTieMD6oonIPjsE3Nw4RGk9ag83WldHX3xBy/+G7a6cDEvpK/+HKS0+fyCBtbAJ/
	 6aBpbvwcwSJHchXuYS3VrI89LsomM6RejXvRx8o0AH1mbBD6LOhVyQzWCi8eCfkK93
	 p7bU637gUx4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FEDD5B15C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565017358.19274.4794178648259959303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11149ba975649471c43b7677494a662dee88a777be3c45ac585fc579a69a39f4
Date: Sat, 13 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765650173
