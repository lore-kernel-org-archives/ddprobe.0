Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF572115
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 21:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0053C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 21:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674424325;
	bh=s/Afnv/PUmGFd2/b7sgCJeg3D7E1asr/miD3zw7E1dQ=;
	h=To:Subject:From:Date:From;
	b=CkTpzfI050WfzlTh3TU7kzHQyzRUbj0JNoA5wzGS6i30AdZF7NC8upoH6tQ5CuXDw
	 clHfVKdAnnuP0+8Juf7F4+L1m1fFOjhUxpTc0oYKqyZXFqbnsvNybsaf7A5BSrjR3N
	 rpNL6hQ1mLx5nwrtplh8Tq7goIxoDLheO+LZtzwqPtE8CrLq7B0dlGOdZi/oNkHM6A
	 S9XNCVHW/jZBtUD0fMhLztggrlb/qPyR7xEG0Gd8igYSdG2HqMvJDgJrQkLQYzwVe8
	 GDvEhVKUjAoRcy5TidSifZF+OhmmTnvwpWUqFFzjLB4/0Z7VRpy/UoI3chudAPmUz1
	 K8gwqCLC8mwqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4ADCC38142
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 21:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167442432573.520.1039783489124484685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8f2c9a5c019ebaeb9b0e51366ec9adf6612e3e841b3b65ce6b11cc13ab4444
Date: Sun, 22 Jan 2023 21:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674424325
