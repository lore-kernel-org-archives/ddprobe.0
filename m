Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7BA268FF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744626594; cv=none; b=kWFh/LxWYlTXGNeT1aFZ4NI6YrHmjviuV0IGlj2Ovjfdx6weJaLO1qNdGikZeWwEDWFiW7xny61oCVZcre8zrdgy1ICfax0Vwh43yMIN+WPBMO6gcjAxmh4BUDxaRFBg+f2oSYC2OSbiuDlGyk09MoMzV0u+qDBIr6uK0o0930w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744626594; c=relaxed/simple;
	bh=2Uo8RxzMhyywTcMkc7d0gPRp6QpO0B9rbFEan0xL1Dc=;
	h=To:Subject:From:Message-Id:Date; b=AhzaqUDoDmzlklKxcKS3qXx1K0pVmqnb8uQ9wP1xPwkWBl2tpRkFGOzaqXFGUdpuzoN6PnzXNsxthb5ZC/qDzgo/Tcz0ezlZPCmAq1a598jyG1HwBxOJVV6/CABJNd+H+LAnQciGfTicSdje8Cr1XWz+eEKUqfY7dX5X62ejqxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R32i5/WA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R32i5/WA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4ADAC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744626593;
	bh=2Uo8RxzMhyywTcMkc7d0gPRp6QpO0B9rbFEan0xL1Dc=;
	h=To:Subject:From:Date:From;
	b=R32i5/WAzyN4I+mCrpHbNNTIAFxi3x1A3Yee2CAs2JyMdQlgMrxbKGnF3AX3YyQpm
	 jUJrQNudXEN6Zja9VYF/8tEnZlC88QJ6qQLrZ45Oc4CuY1AOTngwRNDE0+/N6+af8o
	 mMlBW64t+XPVVGeMDkjvs14SLfAdkdPbxfYrjJQfHnt3ArujnJgOMaWOPPRdxjWIQe
	 d1Vl3UXAV+4MrXUh8UWhZKEm2yDAuMEn91aRnGcInhSCmLpKSSOlJH2XYBFlmKsCgz
	 p0nmAEk0ufaHIrDYunlfDWbcl+H5k9QXAL5xdnrbdznVjrA8WCczQ5dyDfNw4scgNC
	 4qWWtkl2chWjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01FFC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462659364.6894.1884973871563085574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966cae86f392af0864aa3123d527f1246711e7a2ac5c48406887b0ab2592b99a
Date: Mon, 14 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744626593
