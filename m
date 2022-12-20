Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D889910E6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85831C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671501087;
	bh=BFrDtX+ceMSdvOQ0vVAh4Emx31f44x6VksVTYoVqRI4=;
	h=To:Subject:From:Date:From;
	b=ukhzTeCBoNv1Y5xrGF8UYiAJ79Sd7VEEj2Ua7hFWILr6fzvzO2ZEGp7DlyuyKL3b7
	 acLKRVM5syWrwXZRtF3b5bXaBEpVJ8EAayT0Wm1C5ED3QDuFv4RDNwIhVsKbfvq73A
	 n8ObQ1yNisYxJnnAVhnGpXXFdwKnjc7R8Qdg3EYP0LnDKDKBgg8PWDkhF2y2beKslp
	 WtcLgDlCw2XHRK10QgW//yxkEqg+xYxj5Px4IfBqR4G5Ve0Mg8yo9+WOcQDi7yIa70
	 HfKm6D/4ufnGq1A5SXftrJjMYGh1OOJ9Fc4PYP0vNrSRGUFyoHqN7OU+oXI0eZHiVc
	 9AON9H9qdFo3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E05C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150108740.8088.8979301743799657159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481040cbc3b632c0c08d8df6355bf3b6f0804a054ccfa085eee97b5fedd8440b
Date: Tue, 20 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671501087
