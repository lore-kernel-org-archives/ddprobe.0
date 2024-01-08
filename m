Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB0554FA2
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xl01eDAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DAB7C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704737296;
	bh=3rX2fkqKS0EO1Ndgi/ikIk3Cyq/EZv7mL6z5c6OuUfs=;
	h=To:Subject:From:Date:From;
	b=Xl01eDAve3FruEkAWOl0P6WYn/A5VeZsreOGePbx3lf+/DqYLTAkAHLwcyp63wD31
	 qI3YcGlsf3DXWIHmMqAdLvh2XnO3G7tiF9cMa74BSKVHf/crvCMXKkjwCHorD+mrph
	 xnVxojT2iCYxKeDW8agbc9fw7ldJgG7gJ4UrjaEfV5IvHtygtznpfgWKbXc6fy2Gj7
	 NceSzfxtGCgQ+qgnXeD2YbRZCttFPiXOODFamlSZ5b+k1MHUpatuR0xzAVAMcnC4Uj
	 5qnI06eZAAy5Zsn3Xg2yGir3qrd/uorabVeeIBDkXVeoD6nsKhc+cEXF4EGa3j6VLG
	 VjpdBoLSuv43w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71675C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170473729641.8533.16866345184631672769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b825e889aec88d2aede10e79ff0921d23946cb4485c3a88977a1c750030fd8
Date: Mon, 08 Jan 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704737296
