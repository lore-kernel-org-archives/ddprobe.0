Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8FB17A31C
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743087594; cv=none; b=Cv8LdI00EUHuccBHCk19TbXId+nV2aBwnkb/9g4+D2wmdTmh7iHC5PN9KlMsJNIGiny1Gy09LsJneK8WLdA9r0ocdUTsS7lx0ZlBnTntd+vI06T6+tSVYNAlpPbadlttjhtd+AaNAmk+biWWog9C+3mzMGfPcIJ71ctss9YjTFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743087594; c=relaxed/simple;
	bh=IFNs3Wbl7/tPxE64eIGYiLgpNf3Nno+4tPk39EKkcYo=;
	h=To:Subject:From:Message-Id:Date; b=ZdbJDHvgJKl14vETy45IqIUZTyRIuJkCA7BVlEs47WKPlqSSKxyZKyDRb8KOIGXFOJ0Ei75f9NIoKrnLaKkq0aabXGspxifFxFP95Ll+rjM3485wgaXLlyv+Ar1+bDP7Mpiqxr7P9rsd3MHE3JnncY/W4gFt6RaZSrgq7N1bJ/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS+rDQtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS+rDQtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD157C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743087593;
	bh=IFNs3Wbl7/tPxE64eIGYiLgpNf3Nno+4tPk39EKkcYo=;
	h=To:Subject:From:Date:From;
	b=jS+rDQtm5vy2fHeYMBkI8G/LAI9fte/KfeUlXL4Od870drn0PpVHNyqp3mKZSyyXg
	 qv7IQyRHoBs5REx50i5PvX2AxoCv97fn3SgZJhX5UsZ6fX6yY004JYfA/zLDXHqqCO
	 6uJZ1WqYr5hkzqn/ZgbnvM3xOhbIH4Ffc7+0pK+rNwFbElLvLsEMIJW63hBoY23ELE
	 gWUr/1O4YtgNZjmipfZNOrfoXCUk2KVG1fXb1aECHgFpbp7cQ1ezU0NXwGfg8tP3nU
	 j7Htt26F5KQ1I/C5Y+QW6s6jeIEUXAr+cpC3f87rHETfdgXCzmE0Vs4L+Y/rm7Vm/1
	 HwW68ZYRDGTEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D2EC36010
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308759366.25369.16994414298385434210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778f3dc38027a823977d14bf7b2411d04ceaeec6a623d330a1f987d99c830526
Date: Thu, 27 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743087593
