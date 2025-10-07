Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDB7A945
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759850994; cv=none; b=c87wXOUlFMeAi8G1J56I5n3qZJQgX+Cbf+c2cOAeEQsJIUlNp5KbMyDGbx145tIFFEFqI7CC9YlPbCXpPZCdnkPxb08+HpVK9IQUViEMdTb9YZCi4QiQ32aIEB/CARZI59tMZPSvQgE9uD+d63eWXxgOuq5rxmU+UNoJwglCZB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759850994; c=relaxed/simple;
	bh=0T8owbMQsVuMpmw0jMIqEToEY5XNv0f80nTQ4as7fGA=;
	h=To:Subject:From:Message-Id:Date; b=TekKiL7eEjTu5kWVpU4yyYKsSUOm8E7ipFqdHA/MuqkUvyoTi427qrL9/QY4lBiAOq2yY+f42rCN8WfwcBe1QDB/mo6wlyKGSG8QUxK87JFDxHamxBZtgme9nmKkZeB5fq9m24uqYetaUX8+KxDaNBY5jiLnFphnLWCwvrjqBJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=II5zL8xy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="II5zL8xy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5805C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759850993;
	bh=0T8owbMQsVuMpmw0jMIqEToEY5XNv0f80nTQ4as7fGA=;
	h=To:Subject:From:Date:From;
	b=II5zL8xyJmYhC7FRUUSmPPAIgSCD6K1httiBon3QlCTqAMG18psBkjfl0lDWRBOTm
	 xw34Ihx5i9A5vKGO/Vhk2FB7rYBbQ6gx5UKkMrqOCRW+GLUroI9EnWzCXeyxKBvY2m
	 UzWDcRxFsRDMgV9CdYW/42hOsY7K6p8tVGGWCrDEUtJYsq8gqdVHC/1DqclkoQqJTR
	 TlXepgv+t8j+aP/5iUnEaUP4OZdWhxaTb0nbK5jrpokD2lEgrSTouJLk6n7HfSsiKa
	 zhElc2gad43+jpT7vKDKuXqqR45qA5DkbWWa9dn6NE+2GW3SMJUjJ7IlY08oQpMPBZ
	 CcN4T2qFUZH3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91747CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985099358.18348.9948368846455206820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac148c74b94d5cb4362250dedc8189982a92c697b8d975292187960669344de4
Date: Tue, 07 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759850993
