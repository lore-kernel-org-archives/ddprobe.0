Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5408CC157
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 09:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0C39C433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 09:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684144746;
	bh=hCBfWgpt69wmnHSVDp0izUuDwf5YQUalksr8d9gJhfE=;
	h=To:Subject:From:Date:From;
	b=hRyI3yb18Z0yUTh7PgBHdduKKzpJWVULLB8+KRii+w8KqGwTP+HtzTKWL0ZAEDHXe
	 MXg25WeqaAFv12fSYbapAOWGf5N+gsovFzKSQ4OnQVUR9eS2qUtWbkNKSD/e4ZZJug
	 BCVE4rsLBi4bYE1/z4+28TeLHVe2xJWgD3AdQvvbaz9JhTF8FNiJK2zweRETloyVA/
	 jHRra0ifhGdSRDCTZm+4ikc8ywQ5RIuqOLV3p/52yd+6HnZijiAxsbjETqH7PsGUka
	 TzO8zdhskUsTQ89DXLhTwjhjFZkmOqsdfo2cVASZaRgzmbySULna+VLJTHkk/s6hN4
	 Nf4mPORJT80NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2782C7EE22
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 09:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168414474584.24548.12842540275974217531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2dbace89c2b3cb71c55d11b19da052599956f9be1a7f7d2cbe58631c1cd8f0
Date: Mon, 15 May 2023 09:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684144745
