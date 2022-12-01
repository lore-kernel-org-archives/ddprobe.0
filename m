Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3B110782
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2C6C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669932054;
	bh=bj2hIu1eo3LKHrFzBk26B6Xqx3YL4wrg+TPDXbU2Dp4=;
	h=To:Subject:From:Date:From;
	b=pkW9LOpgbiDSET2HBXkFa4RaJJ8tf7jKRbCMiJHVzm7mwvt5pbKgpUusdTwVtHbZj
	 NuUAXbOEQdGIl5DM6BirTs3zWbEXpPNmHygkDTNvR2i91fErV25mQrMAMmsDAx+x/u
	 NwJFKbS3unJp/ZfRwqJGjvN2CgottcXxA5D6b2e+sxFb5tOuSFzBVUuWosAZi8/fD8
	 yjk2CIDgv2FYKmHOkoktXnDV2+Csl2unCGYeXXUVN2W/wOWLqATDUvI0EEShJLOECA
	 m8UVgaxbr+dgl7uc67jNYc5DvuAgF9EUD9sbCWH8x6PemsLtygdoPRixnJ+nznymmy
	 sDIaoNMIjjXaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5751CC4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166993205434.12785.17562167315824318866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e132b08734df012c574ce7cec91b8d902032ed6da43ec7bf1c08ca1650fce161
Date: Thu, 01 Dec 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669932054
