Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D92180
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGkqEdQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8243AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698970096;
	bh=27ILzP4aYCEqu8YbVDvis2X6OS+oigHTqlUo4uMzz8g=;
	h=To:Subject:From:Date:From;
	b=gGkqEdQagUu1BhtI929Ds+bBVdduBoocNFARmUj7PyJmHYkQRAZo0lFWz0UWpYRV0
	 LUYXvZ9E+c+fhj2Hg+nbm4R7WRvBJJ73pzg2jLiIIlpH2LATxq7SwTx/7dqh7+dBRF
	 Dv2g22ImKBcDfL1fIa9ALxwpdH9zr/Y18vcwEbVxAOlds1YRiVh7kmcByVixbdBkFe
	 RmhLohc+IEvpb6HPzPMTBBqaXx3m8yqNTJyBt/Qx+aIlGfID3WRseB7wT3QyLakVtU
	 oZxV/xmbjgCk7YXgzEAstC1Re79f7p2gH2R/hgDALH79m4XIP4FAtFXQlokR7//3Y2
	 3TteeNWGdZOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6875FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169897009642.24785.14820831741077236148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253cbe91da6d053e7006dc1e6924ce557b1f861f4400dd33533c078bef1653ca
Date: Fri, 03 Nov 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698970096
