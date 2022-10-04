Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A0720F7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B411C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664867453;
	bh=oRRi9tYU96Sezyt14y+48oaFzrhkke5S+ztmSueQTIw=;
	h=To:Subject:From:Date:From;
	b=Dz5G7c34iaCUuXa+yP9geEDRilrISCoZSOQ1ltz7939oPvVLVt/ShUgEtu8lWTyoq
	 XfSUwqH2Uhh5mpn0qg8n+KFVMVLDvWlVIHnugozbPajto5uj5ruYTOUL9CBlmCwpPo
	 VWoGKXZEi0GMxB5t6QlggawRQvr/ZCFvAsqel+GnMvVCHhP2v1y+ZpYrjL9U3ne59P
	 znvix8btK2Squ60xM6oLW/eiqawcDWDIf2LK1mJ3F/QdBc9BOSxqvTA59pKPpDeVeD
	 6qyti+FwltBuYJ95lZGbR2qhdrocBeOhT8XPm/FaocvJ4eVnlA6bd3SPUuVN1IdBLQ
	 oF/0TsONZYsHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C09C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166486745332.6273.8399487073400798352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb9e9234c6b09d3c1abe9b1a903009856f9e4f5cab67f269aa9987c28256352
Date: Tue, 04 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664867453
