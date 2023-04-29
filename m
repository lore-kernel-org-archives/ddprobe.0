Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430C48BEF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 23:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CC4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 23:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682811965;
	bh=ZUw/QWuI9AX3JPY9KuayZVpHoEoWn//lPxiHnonitIU=;
	h=To:Subject:From:Date:From;
	b=bNUMfWb4ZM6qP0Fka0qJdDCm+5XE7aJVZNdnSc84F2yofN4OmtyASbvD96TX5qfkd
	 vws008sw6qgfP5sbP+mjHY40NAfYJZ2pVSu4bWssrelsR8WyVzrvu1B+OnRE27259M
	 FVAsJKGdWV4DDrYc8fJ/EDO59k/FjHjHAallllTtL9EryNm3VSvn7znPCssMVKfIhy
	 toF2ZXJ1Xb71m2bP8lc5E/DfkNSdCSSpwwSuGnSbKaj1P8n8zuYUZaZievHfnaWIWD
	 MX9Wl5ziB/NmR2YGe9BnnPG4ecXGnbOFEqQeRKhBPSWwAI+xE8CSEHS2Pq4jel6EAI
	 BTPFxh229HTnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C529CC77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 23:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168281196579.9329.5290649473576731229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27360d3bb86ab15df4956aaae8485924ec7b29b930301d79edab9102c5343c48
Date: Sat, 29 Apr 2023 23:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682811965
