Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC14B7B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 843D4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671865287;
	bh=0RR5k5/mN9VKO7w+u7mzi8ITd9kLpJl/2eHOkQaKhEM=;
	h=To:Subject:From:Date:From;
	b=mIkDnLe57dmhah+7L//xnsl8luReSMXgy8qmnqjzJVgN7rOacKMUeYafslboZJyqA
	 IFA1AA77AfOoPBk3G+GEr+kmtgC8QJ63C7CIscHsM8EOwOkd9n1/gUdAN3HKrkms2e
	 z9HiCKVRa0dL9m0h8UuYi1/vHFpXP201yaq5G426SRpbsFyrtMkbdYuStoaPTUdZLv
	 OG26J5EiPiykkpLgW2EGi/1PO3EOVF0MipsNz44nNhg4pr2Zvv04EJA8gxNramOEKz
	 pjClAN/AmzdBPvwSEkNIHe0IsKjpRHyFB8uA26X1hONCH0hQM2ztK8KwWg/TxC+L++
	 vDqLH8pXpu7xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63767C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186528739.18266.8350871353342382231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb7f582ed4553394131d776658751258b512e7496e41f9c2f9dd859c8cb8002
Date: Sat, 24 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671865287
