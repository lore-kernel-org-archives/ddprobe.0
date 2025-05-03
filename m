Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240D7199938
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746294594; cv=none; b=Eu1DV+oV2F05YGjZO5Yt6Pd9J1xHo7ClrNZwvzPGkW9Pyu++vmSSZRgqpSuYJU39O404XrWGHhhGXWyEwaJV5U9YDXfFuXURFXMhGbxHNP4fj2MoKPMkB2jH4k3RWoF25TsKGh2QyIFxdXhgTFAOpM4VtRoU+7tFPFe3lk10cLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746294594; c=relaxed/simple;
	bh=c+slxRWGCiSIhdenQS+5ThDE1uOuNALzWqyxy7fO4qU=;
	h=To:Subject:From:Message-Id:Date; b=T5ya7daBHYH+qTG8jtoSNy6J75lyfQqwVrkufacr6frKjyr83ZPQlDS5v3TR8jxvtdiBAXfHQluqhSQ92Y7btejOh24+yE+z7MUT8RmmAT/U7kFuzWJDUHEJM4eim5jcXo+eq17uJM9TAz0LmQqkNBBTyOSeVhaRQkuxcm9uHvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxIXzUrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxIXzUrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C549C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746294593;
	bh=c+slxRWGCiSIhdenQS+5ThDE1uOuNALzWqyxy7fO4qU=;
	h=To:Subject:From:Date:From;
	b=HxIXzUrhlEpFXnkSSzN4fc/TfY0hhzd/LTb3zyA1a/0bIXsR5d9iYw/oUJeIqq+a/
	 34PScWtg7oa64AMp8N+i/E2/4gpSYPgvuza6BLWwCYGcYbpoGWiYvPTi6ljjIk3aN2
	 gbT6DxDRnffbNXX6b/eDCva8DLm6yi4fW8JdjH/bhvhVJQe0Jad06G3oLoBTZohT3r
	 r3JSJEjsENHrOksSqWCDOA0CAkr0NvRBG1OL5M6n/C246sKYkdffrN/twuPDafh3R6
	 NpPL5XzE97dFQK7g2u/G56fqZDwvPYxNVFpoU5NrajwQAxV/FtWgIJSoiHVv9vm/Aj
	 hGBk09RAJrVOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E29EC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629459357.13055.5236358736072917897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818c023b8eded1f0f246522155aefba9a67477bad161a3b8c12fc19cc39fc0cc
Date: Sat, 03 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746294593
