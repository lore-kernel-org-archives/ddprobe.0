Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7B11FBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7799EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673602887;
	bh=7zLkP59JCol6/ZXHIo9nDxxLixK00u1cPvIOPYHSnP0=;
	h=To:Subject:From:Date:From;
	b=gKx/N1KZy38WjFBXSuHBPKDuxazf4LMz5nQ1pSdHPrsUkFwAeBmeMy8J/6C/HfLZd
	 n2BZcqzfZENCGWj50F5dMic/DdcM8Qj1aY7GZiMiH9zk0UvzMtlNQzExwoRA6CwjKc
	 l3iS4rm7mpJjfwLIuOcZU1W81IUYcm5i3kdcqIdXVHBKqvb7glowxnyh/m7WEr+ztW
	 tdvvlF3TYNw1IHG1uaPVogH5crlvvIpMINqTEX4R0Z2P8jdqpQMEKKU6jL6aXdJlh/
	 5/Yx+benK9U6DPtFxoLBMimFC0rHzAdr8XX9I294I/HkkHbRX+Bc+s5hrnu5KBFlBo
	 v3RI5tQKOXzFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF7FC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360288738.25377.7290668759218070827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14def0282b2d03ee830fd98d88d4d1025400a5b053c9afc8f410def5d6591dce
Date: Fri, 13 Jan 2023 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673602887
