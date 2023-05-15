Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A45BFBF6
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 17:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F092FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 17:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684173006;
	bh=jFLqbDEUxPsoqer1Xx+c4TasmZQf6/BzvZ8Q86RPSTw=;
	h=To:Subject:From:Date:From;
	b=kLb0tN7xSXHl7WPG/GvBNstSbvCm4F3jlZcNXgKcCy1qtbF8f1wb4wp+YKT0OPJom
	 kNNDvLAD/buH4yaTdurwrroD1jNmRC0D6AP39iETRuuwlhNVBCOxFwPHV2kUyKVcNX
	 5dRpljWQvkeK0K1CKKhxvy8slncQRr2zYAVjiKYKcjj2F0JqYPwvjLX43kyZTFU5ul
	 aIcaNkhjLM0jtWONM/6JfDh42D8X/FqvdAURRS3pgKLRKt4BhbLj11DxQFHEAQVcy7
	 wTxi6ZcT05P3EUosJiQ0JiyeFVymHDheoYmhx9vZBQ0lVg0cZczRKjneekIQLb8rkN
	 j3smBChJae2eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D79FFC7EE2D
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 17:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168417300587.28053.6615341528779398615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4fd3baeeb4ec6cb869b65369f298951c2a31641797dc909e7d3a70fa899198
Date: Mon, 15 May 2023 17:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684173005
