Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DF44A13
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4cXM3GK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EF21C433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705023496;
	bh=2tt1UBZwtMITX03zGim8Buwkyz9WW4I6xsOcurP6lxU=;
	h=To:Subject:From:Date:From;
	b=c4cXM3GKhC/sMRJNpL8v3pp301gUKyLWUkK8xCQFe3PMt2BdlWt5RhAdCl9/PwpwA
	 qYutgLyTnmTbP1fBskVjjqzh1Y3SqzQHFeoNyBRVD4la863hU35+9jKNxyuKPJhf7m
	 w6zEIhljgBO4cEufk9QFz/OuN0xkrwwICAYV1JP8OrapD5iCIzW1OTt9wHR9R6gQSt
	 nVxCPlZO3SN6beuUCSZ17IhSZegtjLDyuPN4kM5YeV/fq9PJXFxLdMzpb3KfGHPqkg
	 jW6/5xOh3g8HBMQrqKobR++eAyaZKRTmCuWdBuZ/1sUi42uKhqKeS3PX6cv6EoEEeJ
	 DajugmuugeMWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68137C4707B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170502349641.2871.14998123722528251342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb9a57ec5f651d6a659bf333d51538807604c97b253bbe21cceb6f2d52ff9f9
Date: Fri, 12 Jan 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705023496
