Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F5E32720D
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774728293; cv=none; b=UXaqfh+aDOK6Bh2cnP7hirzNMjtOGOFg34OV1p0N1dMPGfBALepuvu4FtOuow5bXM/k2Oi+1hhszw3VI4Py2XVvPWYDG1uazuECnd+Yb6VgEZbZLlec+Oo9ZA67ROpwxvNNssz/LMmpdEiGU75R+/yon+xqyWpYSg66KCmzVMwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774728293; c=relaxed/simple;
	bh=SM1wZQnKw7Mi885DEioHNUFtXhPlnvabRpgiQVfBTXE=;
	h=To:Subject:From:Message-Id:Date; b=T3vjuuYrpjTVMFBQuKiUiI5XNZrBL8COjYPM2PL99x2jXBFUSWIKjNiDiIiJslAuogaqAPE96Mxb+PC5hN0+oz/SozFWZykm+BG5UVtdhXUvMIJL37Kpia8IrJ4tM3s6S5v6OrENV//oCC3EL3TNiGW9bSI11ICY4ZdPJUII+U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh/E83rj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh/E83rj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A807BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774728293;
	bh=SM1wZQnKw7Mi885DEioHNUFtXhPlnvabRpgiQVfBTXE=;
	h=To:Subject:From:Date:From;
	b=Mh/E83rjQznLT9djssJO3dzl4ojQzQAIYMdB3LtgZmPverte5HLr1mCMybGUlmhGz
	 l/usSVuBSxXbj3vCXuFa1UBK7AdCvCq0zM/zsaxTedvyRokr2kTF0Vfy5dWzRQ7+fi
	 EBcpX1QNFCFwWF7/ELgl8xPVqLuS6ipHe+dbZlwIoQ2M2jNDO6z1/EA5OtQNsY5+4f
	 8Ov1ye+3YJU+W/IU8JZ03l8/Tp83fxOdQgX1riqE2oIoWWFO54PlWfn1SoLDIKtJXu
	 ygXaRBClOBZtWABBRNNy56/a9ODNx+t/pb/FMLEYao+NM+eD6Y7rD5gsvFx1JN131m
	 ygXFAdpGy1SGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933CF10F3DF2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472829358.13140.13121867108682549996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d71da90476b584842daefc197a37b461a27cbe804857c9805dd5cb0473064b
Date: Sat, 28 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774728293
