Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC8C2CA9
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 18:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00A7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 18:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681497185;
	bh=SbUjoijIu7TgYkpOXsn3ZQIvQFGZwDgjdwYP2a3HXYM=;
	h=To:Subject:From:Date:From;
	b=LLbcuJ/xkG6S/udGU5URZaZvrT0aHTP9PaG+3wVlzJVsE9ZBc/vMgegaeAo0MjbzQ
	 maCL4hJcpX3VkbvWE4huDp9TuURBbF+gvRRSL2jRPl2itLOX6WWgtfVq6gY8hwCCz0
	 Uqmvm/4aPABo/NywyUyW6Kb0mS35EMsr9X1zDaNq8mG5QBh2Ga04HGngwyevwMQBl2
	 gB3NRYrHjZ+OCjxTaOiBsXDrJMv8uOyWzwXqP8+3WdmMP5f60aHrOyRllSbhdl3k43
	 V1ObcVisG/XHN6sA+IAG28O+F51JTsswp9ahlsOrtfsdqHHgg5q3h3BJksRRqOIr5b
	 hYJTnS6nUIHrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D0CC77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 18:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168149718580.5651.5919569823154109439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d0e7a9d7fdaef6e086f76a065384b6bde72456a30707a2a3225299c40142a6
Date: Fri, 14 Apr 2023 18:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681497185
