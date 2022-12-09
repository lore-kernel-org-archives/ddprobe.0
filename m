Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0385C7E2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96B09C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670548287;
	bh=fzgPDpeifBqakiPyjuX73L7BcBlZyHX8QJHQM3M1OLg=;
	h=To:Subject:From:Date:From;
	b=CyRtlgO47TPf5cTSCYOjMItwwYf39XlVT4AWO4hAVWzDLmIB1sSlTZlJQcZmYFFDi
	 qqiCGiqgnkZmzYXzenT0itvVAuckiokDcFZnFXF5sGPZfr3s3kY2r/cgdwapBhHewk
	 YDJHm0Tq0kRT84wT+ajde0FFhz9Osy2VkCwXJYdVb6h5TJpQmaxCWA7kM/EP0qfv2t
	 Et4fE1dhE76/KLjbPLNx+dKXAbJFIlp2+KPafYcwkvWh6BYmVjbdCMo1418p/sm1Lh
	 a3+2+PrwCJkxCHh3JYbGa+6Lz2Nlet7ymIpGht97baPAP0CeHP8rGqT4VSOgJQ3/oP
	 et9hnO74kKEzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9E1C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054828738.9288.2645854947440026683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ab24fa29fee0b4bb700edf4e9139966581d22133dccdccca07449da12b0643
Date: Fri, 09 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670548287
