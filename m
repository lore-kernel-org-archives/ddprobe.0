Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B6B3C02
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 07:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C50C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 07:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676361305;
	bh=P4eaAvsEfmJxmQCofhEHKTZvEFLhsVnfwRBaGHqingQ=;
	h=To:Subject:From:Date:From;
	b=AAOKI02Z44v9lbjKQkFZ0BUX5vGDiQCCWBJqb2ES8qfNqtBV77zaYf0Z816If0LW3
	 AlQf14YPCj2yEanNbRwuybiT6qZhoXhOjwt6NVV3rISAdhOGnl+8kkNTuY96u4pRdP
	 wJNa4UHu5q0+pX+O4olBtmKu4TyMKY9SEUZTXQ06U2iPD+DivVZY3M95nPR/zJQIPL
	 dY1rhYi5x/vqWf82LLWufLirlxhuwUvJiq5m6iy5VgqDeMDls1eOukQvz5ACeQTX0R
	 7MmXpGSaVV9FDlFj/9AApoaLCGyQOvHxfKFxjay0g3IRJUxxYfBNGO6FnUowO7iCgd
	 xAM3zMhD+0mGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2F5C61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 07:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167636130575.22933.6254251273429791473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beda699549d709f43621afc6f5359043957bedbb96fcf90ac76352661667c84a
Date: Tue, 14 Feb 2023 07:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676361305
