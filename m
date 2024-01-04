Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD6A24A1B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkACFBl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88231C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704387496;
	bh=Fz7nEtan5rGheo+nEGiaNCU+/7EVoEM/7H5JbPHpLs0=;
	h=To:Subject:From:Date:From;
	b=OkACFBl0nRA+oskfCY+BVcIZDNK2Ce0bREWZyhmcfc9JfZAfnikvhjvnajqGQfoEl
	 ZsmijDu2JOrOdvJ3RlISP+8gVXLmQA5FHzhK+teTWUMAPXFErnrRL3FFW809ZlFj3e
	 1qtup2T/KhccEpi/+4XYIe6ry9919VuHl1WPd7VZ6vR2gd/GQLO5vCZZhwtVPjXIWP
	 rGgsekiyatc8PcVUNBjDH2Sg7cTfYD/aHayIMOIYggTfZSxl8zlYgr4vFqjRyy//ra
	 HjXxGRuz1ZaW03NxhgyA7LW/17MG07cAi+5PmGVc8KcPfixmw/lIs/2JbEr87SFPqD
	 W0u3WeXSxLnyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D305C47073
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170438749637.25673.2305738440105951524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2541aae1dda0500b28bf666f34928918cee68319cd5672b9d9c7b18746087618
Date: Thu, 04 Jan 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704387496
