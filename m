Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75847361
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 00:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F25AC433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 00:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680568026;
	bh=tqFWIX3BMKqD+1U+6E4MqAi3sLMMrUbUwVqYCEhhYuk=;
	h=To:Subject:From:Date:From;
	b=i0mf+zCHqZHwoznrPrMXK81gGGs6LjOLflfv7VMd2sVqfsdmp5afKPGTfO520ltmB
	 5766zku8hi0s51ylIFRN0sc8CgKs73Jmqqy1KECk9yCmT1Q9WqXg0nYmqjZGa6kkpM
	 gLoCxtiIl9zT3DcSEpDCbIVOZ7Y1Eg++45xyYGqG5kMJpfHj1r9BXgTyBS4ZJT/xhc
	 pEsIIQL7pTl6rYzwcBdpZBjkikU/pVYoemYxd4sSMWfYVal9kUpuKkGAjMOfB2VO2S
	 Fq6mfCpten+AxqeoeLnSg3BD4h7SZrYI3GNrgjGWb7ohSjLa11PR+o9sfCf7XhvH8+
	 y0XazpKvFVtaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD1CBC76188
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 00:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168056802584.32354.3533039956246609783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962b20ef7aa1f746ba7adb33d0e0dfe8cad070e35c08cd8cf87930aae62b9ceb
Date: Tue, 04 Apr 2023 00:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680568025
