Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F975149C51
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735061754; cv=none; b=mnpFs3JkgRMbjLXUIWtGOiOQJvbFoqxHu9LVMtAwSiw6iGkD2OxZVYDGKgDXcyOFG2cbP3yTjcAJwiIwmbjol6uH6pRr6M7DgIHlrBvlmWFSeIaWA0v5F54AkaWma8gQKG2ERV5NSyY9nwqw1uSNNzXSqMYGM5WBTRTK2PlGhIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735061754; c=relaxed/simple;
	bh=k/NvFOjJp6od4cAO/sn4uaK3aSa9uhA94Hdw4alr1AU=;
	h=To:Subject:From:Message-Id:Date; b=ehAX8gRNUfECGEtJcaCzC2ijshO7rjsnkzxHZha53Gv0YyD9uC6hHqo1Nt+cbn7ZEYcxGzGT7FXNjdlYXANmXydHEAur5gScXB7DiMAB6i+i0LZP8iMeGvhzvwds0XqrRdD0f8vDHPbR+DqVUS7LdkqlALpj16GW78KOiAVPgFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaijwB/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaijwB/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8043C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735061753;
	bh=k/NvFOjJp6od4cAO/sn4uaK3aSa9uhA94Hdw4alr1AU=;
	h=To:Subject:From:Date:From;
	b=FaijwB/CHKvITpUCgv5s5HmZxgKkHrsVWR2jbqEnWR0XgCIVX/PM6AZC0ylNECQGO
	 2xg9NGxVX1U+auUm9O0N913t/M+SD2X5RhUxrh4aBsuNFhuDmzbQm/Z+wcNPoXsDJ4
	 VtX8bMJmVRIG5M5o9wrBSscTC8lrlDNSZJV/iahodxp0NxqNl2rqLHVZusW6l+GYUA
	 GDFE0JIiUDKwzcX3LiGH+iGqyO3RnexvMulytsI9+U4ceBYXyiOrN9n2Q1qdfFRTuw
	 W3H4d++70XRzNTREu1xr/JtHg6nBsDg4/kXtL7lQktPnjLcxi6MOSdFfd/IZUt4f5q
	 feuFt9R+Qr9lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945ABE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173506175359.3764.18146521849048843260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8282dce0134244fefa7f641791257ae147a226330f9706e807329865453a6aae
Date: Tue, 24 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735061753
