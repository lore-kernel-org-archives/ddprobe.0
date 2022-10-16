Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8007E4
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73612C433B5
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665901253;
	bh=Y0a0DtdMQl7o2kKO+DfZ24xdKQmw9pPR47rxlVX87SA=;
	h=To:Subject:From:Date:From;
	b=M3XcrraW+JO9vcu52IRvgbF2kmWZC4fL2g3us/yAyS2EqUMaMlnIyXs+eXACksPr1
	 9mp77V9S9YF+dznPh1RDSLwvRTPPXanLbbUAAMFVu1acYPW1XlxIDrJ3wFIdvtQ54X
	 28/O3NPgGlAGQ5Ls+1iT9kVBF+ePhnis4hSTOrLib7qOBfUFaJkP+o/PAdQ8GldFSK
	 B5zRoxoce8uIWYs+cUaGMDAo2pz3OqNA2rj5Gb5SbxjvcUa9f/45SPgaVnMetoA/7m
	 OXc3Mp0oR4UiKXb9Itmt7PhmF4EZ2QmGxYXXfNEgyvAh/YMGUvThWtQfXYlDWIFki0
	 AxdIiiqxOHARw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59352C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166590125331.565.10317459008575614930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca876945d88c7497c0a3353c2b9fcc0f96642ef75f1610a9b150511deceb059
Date: Sun, 16 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665901253
