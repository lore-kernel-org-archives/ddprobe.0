Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF243D64
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C93C433F0
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673286687;
	bh=/L9yAvM3hZPCr1Tb1V5mprcsspgG0KRjIMpSvdlTt7k=;
	h=To:Subject:From:Date:From;
	b=Ysuq0QIPBEH/SfI/9xXt0VdMlN81ZiF48dua5NWotokdVl5xl6lFKbe+Ouz9+MpQo
	 5D2O5UOBJotxIgegaKZdNreFqfHDxsS92g4/rCMiJnIr4GWLkJ8oqkGMRZmRH7PSv+
	 9eLK9p8rL5iVqXid3QYSNSM8Zosp4+CLJMrLjX1uTmGpVPLr+BlOwrV9l35xhBaDMj
	 m7eA6pSbyT9RVdIaU3d1mQ4Xr2nzaBLMnUTrOJRWKJnj/l0orMfXwqbVPQP9m35F+n
	 Rrjz5uPeXbQR48zyA76woLOrgg/UVcr5G0yTFBmlBlQdQ0eozoLWa/btvliVPaYOfj
	 m7l6EqXTZkaqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621CEC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167328668739.11059.5863649792482651211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d2c0040abac21cf0922da81539d95c0e562abc1ee5f0fe3637939b92fcff58
Date: Mon, 09 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673286687
