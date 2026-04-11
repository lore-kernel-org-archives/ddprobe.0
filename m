Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232093074A1
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775936254; cv=none; b=qr1nJh4daXeKhIQYZmRdkVugbIvvEr4z+BnlJPSxDCN4OAXTCQPTM8mC4M5w+hnf4FTMf8NHs5ixrcM3SOUV0vP1jnhlM6dT1EI1SDf2G+Uh5+k6sf8gu272wJthE84rVVFFfbHNSrntTpIIh+fCMhJKtxLSpJMk3CcN6H7StcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775936254; c=relaxed/simple;
	bh=J8m61/zjKzGj7k/588zLS99aufqD5PkqSO0gQC3d1cI=;
	h=To:Subject:From:Message-Id:Date; b=Wj9mqplz/iq0yd5hAzHUqd3q6pITctqVTiQ+YivIij+TjtYBNaKtuVV6rTQlXsx/P7HI3HzXq3UR3Qbz0yExaHKRtIU9yymirOqrjWgj1GPgMU0Oo9taM/Appye0/0e62fLBpBJePFezk/86XhU/lr4bGQ9Rg8qpKdzsvx7yLh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYi9zz7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYi9zz7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20A3C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775936253;
	bh=J8m61/zjKzGj7k/588zLS99aufqD5PkqSO0gQC3d1cI=;
	h=To:Subject:From:Date:From;
	b=gYi9zz7SGgcpgNEwnGqtMSu71k0hOtPu503sfzgOSDByxCiP4M97DsG8HsZNID7w/
	 85CEZGJFrirDubekuE/QX82OnYxjIRnfQP4bPiBLkWXSnxRY0Ugie7AjddaA6iMTkE
	 Gk7bcNFPol9awSnElwNARitl4KT+1V6+cK0wZLrj7nKZIbvItwOCcn2Xits6m2G1xG
	 /bCpV0nNRO4PzegdzgOF6scfKjXM0XDqCOZuXxDaHl2TnIAxuiUNu/R+TpXiH1Sy+I
	 vCPG0IF/fijzu6Rdtmsl1h72yU4uQGosFyYDS5AJ1BcSE/M27ycj7hU2Lu60mxK9D/
	 6qeeCW6Qx9tyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD07BF3ED5F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593625368.23863.3525928053336493716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bee8fdbee8e887e767ec8d1d67389efa32dcf1a03744488713e0905732ad094
Date: Sat, 11 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775936253
