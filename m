Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01235374737
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773701094; cv=none; b=GdXvR8HgofTq7IXkXTW3WxPjj/X9PEowSsLbOjvvgE5Ma8apz2FPU2SH4+hEQNO9eO3HCeLP5bRFUbTbEc1ZDhn/lYOWX8b4guLq6rmwdSLf9LovArHAMJCv08IM8xAEb5v8kNq0AIewf4E2nEVHrT+hmGbA0Wavm+nDt3KvqoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773701094; c=relaxed/simple;
	bh=YsC1i3dX+jjRlkuAz08/PSO+6h0t54T/5qQ4Ml1LhDc=;
	h=To:Subject:From:Message-Id:Date; b=PjRrLLtlF9b3mwVEU33v+JDCKyDJHlS3bdEr+lZUDBx+E5L7o/7ln1HPaGtrJrcoCFwW2TUZiv1z5K/PSiAGb/IWI7koZ1u9prPOv8EIyhv4/p+qM5jGumjWjvaVQika3vqqZxKZ83WcNcgWkbTt3Jqr7ezYyrU2Vg7z9bvmAdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huz7wXrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huz7wXrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C681C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773701093;
	bh=YsC1i3dX+jjRlkuAz08/PSO+6h0t54T/5qQ4Ml1LhDc=;
	h=To:Subject:From:Date:From;
	b=huz7wXrndedV6jDAIcAzo3XDD2bNaSgpMnHbwF4fHIjDdQJSiKJl7TxSn0I1atS68
	 797//zeBJw09Pwbp9zEl0A2TQHpCu1ViYwgfI2YD/ysw+UIqoQJUlg6s6408rqJnHY
	 QbzaZ4DiDoaeJH/tHv3CWuZGsczGJjHJ7+DG25jIfNtwAft+rXUE73KY5vGhtgeMLr
	 tP1pJHDc2FrCq8o4lG/ZgZTj4lYYpb6ABalX65DPdADWyyZEqSq9QMLmMmLgulJm6L
	 pGFnkUFUNnn+ZSA8vWJDFWNVpNf50kCXi/eM8PpdN9rls9GSfQ4GqQcQLbbtIOtcVN
	 Tr0DDH1nqH1CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BEFB5E81
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370109357.7963.5442304670675834717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450afa4e14d4acdace4bfc6cd5b85756895de075240657ee3c1f293234035285
Date: Mon, 16 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773701093
