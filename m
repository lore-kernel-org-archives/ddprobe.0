Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC36E7E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD64C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662139853;
	bh=j/mMn5rjMXyCSrSDNKKWNPdAKse4Fqh7ioLh91j8uTE=;
	h=To:Subject:From:Date:From;
	b=JXa3eVSymJxutca/oWCyVdGz+iZ1bzlpwdFR2g7IQ6KOZMsNTCr+/q52ZYueajQgo
	 j/afIBkiNNHkGruBO5X2bpk6Acpzm43w43Z9pKmtRbRVTzkdxVAqGGnp1/ftpuaY58
	 VjciQyGkhBq65fw2sGxg+DKHUi+pNgGtmje2XXOiZQwNQm8pCzQxQXY5X35KYMwPcN
	 XcHMMxnGyG6ShxLTCDbgEXqSUWfU2VzVMzxYF2G7raxC9LHL3Z7snkbI2SegAZ548h
	 /CB7AQhwuzebbeJNUlzgXV4vk7O2wQnA3aE8lnjcRiO9xjBkKgD/DJzM6+qyHly7HM
	 W+xG0AvVRKNSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540FCECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166213985333.31387.13305971389136915280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c252f153cf744ed2b3b85deb8451de416e9ea191103752bd6e343f37e4e9d4
Date: Fri, 02 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662139853
