Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640EE3D7C
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 14:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEC1C433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 14:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693406048;
	bh=GB9fzvTSppjOqoTklGTBEnsATBr6pYqeJUi+wtITw1E=;
	h=To:Subject:From:Date:From;
	b=HGDqVCJLI1qaICN2xno85LFm76ECCtZtbwnzkKIUhl61SGmtB34iGgz6eRZzjUeQz
	 2zhLhD80sqCxCCRut/R6gckUIw0wy/DVthP2TYtBFPnzEEkl3weugj3BVsolKXnnF3
	 uZPLyNyGIA6zzfuF0PAOZD/WZJ62FjyCiiPRFL28TmDTj4fIoIhE1WYZrz6u/UXiJl
	 v8i81QuXgKKZRPB1UYt/lTeVGivYM1pBla9j+3emMBj7fvFRjJAaYKxDQB8NNLQ5IW
	 /jFF//GK4E5jVYwnuG9PBlSDy0P9gjDHr147xl0SI1wvoU3jsiolfr/Otzhoo4JL5J
	 jRkL9H1SoNFtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE033C6FA8F
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 14:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169340604870.30639.16442688102146369799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf72c6e6b4f97ea7ecaa87da22e9fc0e4e4423b8d2f7160865f5f410c047dd7
Date: Wed, 30 Aug 2023 14:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693406048
