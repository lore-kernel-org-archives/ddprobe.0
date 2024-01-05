Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1759E225CF
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6URX13V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB10C433C8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704490096;
	bh=jLqq6P3aEd0HoNhGozBqXJQAlOU3dwbVBen7gP0AViY=;
	h=To:Subject:From:Date:From;
	b=Y6URX13Vucer3tvkmCzvI5V+Ns24jBN8mUTSM86oa2AZHuzS0j00eURSqxWSAphIk
	 GLggFhwie/MoDQ0iPZBYpkaZ7rARjOQgESB/qlH8I4E4GX5Y0n8JrX0LYgwsn42S8L
	 7TcEtIlWvjEaxmBjvXvi5syuw9ShKjs3Z6BgiFRQI88JpGFfOksh0fbPKWs2epyN5W
	 Wyz292+huU3SjyHRW9muE7YOFIzH3XwjM0dOr8R5ZoD38e94kp6IfCvleSJ7UR931K
	 TtKgBL3QlCaOszDKV17CItk5Mgy/B83VOo8kY2MiuBEblE8U+IgeYw9qLfsWPEjxGn
	 VwBIwGHQLXOfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6376CC3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170449009637.7270.1533915441322673684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935e6742eeb6d1311d6c764662bd1c17d7dbb3383a3681ebf96a96c8ea90217e
Date: Fri, 05 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704490096
