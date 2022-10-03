Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99672C9C
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1FAC433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664838053;
	bh=zqaGJ31grgnl3s47w+t9a6rs5+O9AZ0QA3eY1dPEMzo=;
	h=To:Subject:From:Date:From;
	b=bRUabq9HsCERIvsokLRuYslcfUWh5Svtnh4k+VzTwQC/CQhBRi+KdnVpQDmxXMBNv
	 id+47sVEc/OZAMuTH8ZWOTROHgUq3S6j5TcNnxKDD/rdZXnO1rok4W6cH5HgsHfEUh
	 rlljSpZwnIZdtSVNCEw/uMCSijneF/qs+SiLTLYFBX9ACBm+Yd5rAJjCMW+LxEXa7+
	 cMn7pR5t+dwzrs/CBf2ZbZUVJTwjWGLPS5fFkrXupa5LyKaFtnSij2TyD1FN5SjDGR
	 cMcdA+cbQTC8wUnb6aQC0TLgZ0KFl0dKTV0b9qLewMlj5BIlU54X3yvqmreejhRZGB
	 MCZrTEJKgF9fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A92C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166483805333.7796.11281598196119628594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823f6e713364f31cdc4979471577ab8fc9677a897cde50407f9a5afa416db98d
Date: Mon, 03 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664838053
