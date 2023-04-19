Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FCA79DE
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 16:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF85C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 16:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681920305;
	bh=9o1fremWyg4k6H9drNs2PYPh+C4iu4jBVWoKpIOgEYU=;
	h=To:Subject:From:Date:From;
	b=Kv/wHmKr+YHJotMSjQgBFzcsIpYxRkaGtBUWlfUsH1ss0+55oXEdjwZxF2UlXWd3j
	 PjPeP0RauGFdl8U7F5J7vCI9EsQ+pY+U23V4bUepa7LzxiFZRQp47eRmtiCKCFgvjt
	 a0eZ3YFhYZTrmU1NsRydJdORToH43U2EgtQRp1PP+RN5e86AfjhINRi07451dS4SsA
	 dUDpUrWURtMagNL1/kt7Q4dgySfIybr2RHfzKVIIHDiMG6dHuCSAanYDHQDtysF66g
	 reQua3XF5XnsFc5dI7kKYftcDhIH06bykg83tByBbk248OZ/c1HYeYEoQzWIHW03YX
	 CTYo3Fwx3WneQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53DDC77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 16:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168192030579.8071.6851735201769580116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c501e805c489afd1b3be9b102388f2a673ae87d5e5c6608316ed15aa6e36c28
Date: Wed, 19 Apr 2023 16:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681920305
