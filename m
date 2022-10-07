Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD85B7E5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8DDC433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665109253;
	bh=Af77XfHHRYoPufcn+nLwbQWANbIdI43lGlS753khuQ0=;
	h=To:Subject:From:Date:From;
	b=uprKBIBJ5MljxoDUXXFUoTTNBfkdB3naDdCwNfS1A8mVmBUE4B4EDhEq4v3H4hJTd
	 HhLb1o/3TM0jYw/d9oZvfN7bsz6kATcg9nhNSFr92lVqPjvoCIb5Iy21zSii7Jk2fv
	 enWFXeVc/g6si4c0Plp+Anx/aP3OVcKqgSE33njmB3fG2WedTQXPYRJGtYeh6D2vKU
	 g5r8OPULuj0iXZpw8VVcmWcRlbo2V6R/XSWL/63UFFeUJ/EVXAinnMM31WuZls9ARF
	 d3rynuGryopZCrzPpHQqeQlg6fZlSxP9m42NODwJe62ZM9LBg662vJ8bOv3NXT6VkA
	 J7V2uSccoYCHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 504C1C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166510925332.31250.13110603515672331137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed7a1740ff2ef0aa50670fe28f5d56c0ca3424c41fd5b01c29c3c4fd86a8f3b
Date: Fri, 07 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665109253
