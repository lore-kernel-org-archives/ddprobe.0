Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA31180
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76474C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664915453;
	bh=M+JvwPmsO/fpulC//zzFTF+wiZ4Oxy/bv+TjTo5P83I=;
	h=To:Subject:From:Date:From;
	b=ewD4VQR5Y/u10WpNqk13HbDB4I95EksSn93deBLvNVMl8LD633KDF5NGzDPT8SBJE
	 7dBHwQozxex9B2yTj5BVy8asfB1utfQ7jqaLCIn87+LQgYGcK754Nbu04UITANR4ph
	 vwWQaxQM/Uoy8zjB8URvJ1pPUw9htjMe+rGrWI5e7VYebJXFAqZnDf3f//0J088QPy
	 RZd9lSjjoJG7tBtne0cVYuX/tdfp0IjIKLaTEYY41DT4LoODthezQOI7kPxQky9+U2
	 UU6wkJv6q5+9GyMd8xKe8VvjMolu/48QGj20jTZunfnklw6d/5N3LcAKuGl4B9JFBj
	 SaaNDz3RrgspQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC77C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166491545337.5114.14056655493345346520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b77efeef86671eaaece4292e748b7fa2d5d36173c4aa2eee3b9fb3019c9dffc
Date: Tue, 04 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664915453
