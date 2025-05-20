Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0DE24293F
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747748394; cv=none; b=kiTend3PTokyqktlKSaGbBO5ZrQLP0+b9CP8zee3XYXWa22Tdx4X9QInNT/yfR8+Dh4y3n49aXCEUKfPb358RFSNP2SnPZdGiSLvM0V17I8mTXYwrVjoJVXmjXy9mARfSGLIUVEBxz7PWzqUADXveuUZHn7YPN2kFL+X2WJHCEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747748394; c=relaxed/simple;
	bh=7IouDXdBOMZCcFFgCr0hole+1/6jcQwzY6h8y14rGZU=;
	h=To:Subject:From:Message-Id:Date; b=P3Tu/1J+mRXJ3EBXFHdqu3d36Ifuz6VSwz6H6Q3iCVLWhNmc9c2iJ4AdFaIJba24QVH8hncZpMFdS8UmC/KJjoHlzkaSm4r79Vt+yjC4xL3nEJzC9KTtiJOLATrwkkpdl7blmE/PmZvAZtvOy9PNwFWtaaxXG+ghFYBkNCzNLdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SieUiy5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SieUiy5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BBCC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747748393;
	bh=7IouDXdBOMZCcFFgCr0hole+1/6jcQwzY6h8y14rGZU=;
	h=To:Subject:From:Date:From;
	b=SieUiy5qSrer/rvuciQ+2NZWLchf3d8/o3DH9z8x5oECSQTJOk+UqpCjzyuFyjDcd
	 85YFOoj6XFxl/Z3AL+ZON4rLeGG0Re6LvfEyeyW/vNd4ewr5/oA1wPPsr+ba0/19PF
	 QCzht4wd97WBwZc3T8oVG4WXDyJrXGJknzNxoidYM6TxwzfQ4H6bzGxB3IkElvs9KB
	 Ib4Oj/8a39TdEqrdL4Zl/+QcCCIyaSt6Xa/wLZA9jKtpFt31gaTx9noYRGyU3Cbs6R
	 Pya+L6YpjVEMFG6eRoHG1ZNZsaSTaFLvUT9uFBJqOMR8pLVulvmKlrR2FLqaEN2I6Z
	 QQ0qUjyFeLnlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52DC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774839357.11030.14063001689678323740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d0c8d71477255dce562dbc418dec09cd71cc82297b8bf4d979b9229a4b070f
Date: Tue, 20 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747748393
