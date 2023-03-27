Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2547EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC469C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679897525;
	bh=30qZ6h3hht5zP4R5xVTSJrJFORsjtaVWdzDqI1Sd/Y8=;
	h=To:Subject:From:Date:From;
	b=Fapfmfq6QCT+ZTZaI7PRTNMvhY06X5x0YWkb9aNn8hgc9XejSDPIAi0vv6DkzOjQc
	 gptL9w+HyyE+par+Bl/ALT/fRTJ0JT3xVKA6cT2/0HkfBa5rLlG8FhYRBJs333UvBC
	 V/erVVoId5mINAVkPiuFCFaePbtZYZK0lQYQMIzjlUCfsWb/6iZ8GAMtM5Dkdrk+BW
	 oKWWAR9i4HEVD1fxK+M1J5lG4Uk7WyI0bZimCRmB+hPsqBYLNU1wa2cJQR93D0a4Tj
	 gCI75uzsZvYtn6SQqmqhtJ9dii9un9ZEkzIxcOhs4UxQj3p1ougat4xI+62zegp/s6
	 hesyTwTqsay3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDE9C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167989752575.1451.6153390214869152712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347ec8fca9c9155ac9e04c85e004c6083ff14cb8146bd22c8eb8ba60e384686d
Date: Mon, 27 Mar 2023 06:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679897525
