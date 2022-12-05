Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E347C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B318C433B5
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670272854;
	bh=O+ISLqeNkl+QjLbI7Oh+ZV72LLI3qXCeHIww6BRmyNw=;
	h=To:Subject:From:Date:From;
	b=BSGSgufXB/Mr7K/RaeASke3Dl6pP+Vhj93kJeYIMqNZkLrVzr84p16s8UeQaAQYDu
	 tdMPsfA0i/3o0l8tasQxXfQTpfuSFjPDrmEf9QkaxKX8wx+KdZUVp59TlGZIicLW5b
	 0QoNuXnai0usn4075BnpSrEVvwEx1O/XD5qN5wUkRFoLkWXKNQdha3HOlAJaTGrof1
	 hw+KllooNlq2ZjpD7L1StuxLu//FcVRmvvUh5PgcclpoUzIjTsGgw0Q1cMfDHLtXUS
	 6jDfLhp587NXT86QtJo886N48JHJXJZbt9OaU1ac4SQymGZ6y74to7/5uc0LZQoNw8
	 40sHJ4vphBiUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 604F4C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167027285438.23686.16239865603098348524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33161259f0086599c1d2dbabb3c94d6615abb56fc190dbdf594c54dc8005128b
Date: Mon, 05 Dec 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670272854
