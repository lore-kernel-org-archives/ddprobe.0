Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABF163D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787F9C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669045254;
	bh=WMc9Z6ztmK9zfB/ySedtdmTg8PQtv6W6Q3sE1muqM+4=;
	h=To:Subject:From:Date:From;
	b=qh7lpE6eYnXlm6uQ/0v3ZXt8V8K1bZE0srYi8iFKs8s9+4rYsFMDTCvPiJ4XYSWqX
	 N+HL1GcGh79W8rjpsDB93bdlPSI9JSFX6/10MoB6dMwCdbuzlqzfNrUGrrNk9DgEUF
	 BJ4s9x3RSZL9AZxv+PwIFXedI13ishVFqJdWvx5LliQ/arg6c1iRuTtqYTy6z41Zld
	 tsLV+ZQPB+LsA+x+wbqN97DvFeLIt0cGx46MSaS4wxAXpy7DfdgiNT0grvn52DZmDA
	 f1ZvhQ+t5Eqgl8SY+2g2cyB0HHDgyNvbRVIfZoXf5VlrM/XRnv39s4oSTSRY6ZaybV
	 GX/N6qxvJ/APw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EEDBC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166904525437.8921.10884217000783267025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9103bcf6cbe38b6278c8eecd40a31351e465de441aeb50e8de0c07be9fb12cd
Date: Mon, 21 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669045254
