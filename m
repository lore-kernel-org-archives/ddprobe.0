Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AF2A2A
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D43C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668301254;
	bh=Qu5AZ2nHPIq8gS7Ho44HuP6VIaAasqO4NZ4cezghGqE=;
	h=To:Subject:From:Date:From;
	b=bbB0IJjCGCHN2fhnPl5qKU4h3RchgX5WdrIAZEOPsl04rtvfuOUjenX8gyyYIUq1k
	 7rXif8zfYd9HdnGPzgmIgxTffXXW17LjMZ5taCcDbP7tc07bhGEITeYXLdPI/KXQ3k
	 3YspVNoOLUJFtY1waaThZCcSlhVx/zs0MLH4YR9pCPdlwWxo5/1A+U6YEEvyFtikR7
	 OUFzPR0ON/tKh9PFrbeuY6Gbmlmgnq0hr0rcN07X8C+Wa6DCU3QOtESCMpU/U6zjmq
	 b2NY2Mo5i4c4iO34wJp8QnSA0+5v0y39YYm38804gwGWEFOPVl90TeGd7pIRXcb4B+
	 2DAxuC2/GWD4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570BAC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166830125433.27719.3312566802255076356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510dd242112551f7614b6fcc3e01239ff303d8974938487dd9be900fd6b3e928
Date: Sun, 13 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668301254
