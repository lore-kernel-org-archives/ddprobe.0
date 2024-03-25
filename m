Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B415644A
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711375697; cv=none; b=gCORvbDdxbIma7FcpQp8EJEy++s33zALlof//uylDlxrbdVQbUh6WJRrkwENzi1LgmJIIUq+k2G6Zs0mMMTXHrU3OWkxQjVZq9xZhERNAF64aQE8OfW/f//wsNOt9vux2A4xJGfhZtl/bxf96GFmTjA1XYSY2Ixct7wAED/IQAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711375697; c=relaxed/simple;
	bh=sH7vCcxq/lu3qMEalOoayh5EwqNhPkPVffEbZcyqVC8=;
	h=To:Subject:From:Message-Id:Date; b=lF2KI2j0iktdo3pJvNIio2q/Vx2S2tWVCm0JLMBq0EZBztncDoH36XvIW8SK4Xe3RnF0YowPWUqTOgUlYOzBHZfTOZ/1YLvOmwuKnNOehVbZ3Dsd94sLyvTvG01WukYzx6ai4JuXOtkGbRb4wcn19LjJ6N78jIp31FWFti0U5bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lY3i30NG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lY3i30NG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B06FC433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711375696;
	bh=sH7vCcxq/lu3qMEalOoayh5EwqNhPkPVffEbZcyqVC8=;
	h=To:Subject:From:Date:From;
	b=lY3i30NGJAdrWiH8xwLLHMiZpOqBP2jQYmnpB9kXSqhJNMiqVQrtvWJ5VJvpOGAai
	 pPOqZj6Gb+fExaDuPQ5F9PeMxO4Gj4f2J53vvxwmZDKb9HSi9Cbjdb+XWeMobbmHKM
	 UbeKO1P+u7AUvmBI3MRY5uUFvz6wZTilfNSttv/oi6s0S+2Y+tEnYi8BeOwuK04zSf
	 ILcH1WND/uJa+JrcB+Ze7ZWFL5BVb63NV+GZ174ckt0DWxozHgOc4tFokTNeOBfGFN
	 08DEOq9U7Qz8SMeIRkUup9LaAX1BnxQLM6nI9ZUxfIpRAwoFiNrGnHF1hyKG/2MsH/
	 BflnTODOkhnpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3CAC54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171137569638.4049.16671153258817482198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffa39109ecdf397277b9a177c0e2f9ca454110016724af869c517f906be691b
Date: Mon, 25 Mar 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711375696
