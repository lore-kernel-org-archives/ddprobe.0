Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA4E2ED4
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 688DDC433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665985253;
	bh=3oZ41aBWrWhKJg4k//W3H5KdYULtkKuYsVb7U4pFV4A=;
	h=To:Subject:From:Date:From;
	b=kOle3KVSwThbvSPCTfp6z5h4z9bnK4HaJCZT52/OuDQmf9mNcxYmAXgUFycmcBdTR
	 lG8ruN6+V1DImnPN8wEDUA+lGOwTywNze9cX6pUg6ptCuybkJg/62FoGrCiReq3/th
	 Uqufna8ZMjwRyx52MIRJBjLh2ifpnuwJiskN7rHw4JJGaq1C7jlRgJNty5nzh8wxDB
	 1mVFH+UjApMOLgk5iDIfiyD7DrUTnNNOAqZB79pioOffVHuunDn6LmTczyziDJwRpu
	 3CP+eyfBfr2MvvgkzoPDBtbKYlBh5AhKvjZuqyeiT8ZrLkzDbh5Hxy+0qQJkexH49Y
	 904RNbu0L9R9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A24C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166598525332.6410.16045121999780980098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11bdb992d22436f7461a2487cd99f06454af4fbf63bf8a7185151f780bb02ec1
Date: Mon, 17 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665985253
