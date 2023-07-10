Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551E9DDA4
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 10:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5907C433C9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 10:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688984228;
	bh=0eFTECD7rHmnRJZV5iMoNd1thiB5xN2ZFBlakB/+VCo=;
	h=To:Subject:From:Date:From;
	b=H/DuuChzoGZPfgP4QPvnh6HMsGDvLj+EC/nHtjN+FXcPVuKGxOrV4wCnE6sCdu80L
	 e75AOjFqi6TX2YuLriARoUPpYgnmz/btdW9Lx8hret6q3nvu/MS4S525pLtXTZm7Nf
	 sufGQAA6JskMhruQsfmoplABHWdNH5h4rQzoLaCoTsLERRgOnHeTDJVARqf2gJecoG
	 FH2tJIajJLxDonu6p1+kdwyywzAIdbDzJlSHaYDLRwCm57LVsZWALPpvnEGfwalOJS
	 MtPncMAVm4wkVFOvK0xzw/yDCXpfwmDmsdDwV4oJaLA4f+37kdKjh2WavpwmN2UAUn
	 8ixwcqCsiae+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F60EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 10:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168898422868.22381.18018295601792856116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ead9b4a565e908357b780e14109637d131d85d9595ee7290ac2ba7312c6af41
Date: Mon, 10 Jul 2023 10:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688984228
