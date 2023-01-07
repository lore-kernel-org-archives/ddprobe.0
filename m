Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C671C32
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D5B6C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673103687;
	bh=j7winQgmzf4sHsfUSztprozGbwIF+JKfJ2RLWkjChEc=;
	h=To:Subject:From:Date:From;
	b=LA95XClMh0iA4e2LJAVU7KjRTfDq5OdPw/qZlGZBFzM1xlte/ZoHlZayOb6mCXJtM
	 Sfl0miq3iRGXopMaoYVaQonElCXIbGi2jebR4d7ryK+7Uj5QHsDwG7AXqeNM6PS1g/
	 l3FzXTLJlgnqHBtLGkPG3wlcGyJSACFHGcBVa7sQDfxB7VTmDMZwmo0LQ5FkiLWdBp
	 6qB9B0hl3dGY8dbc0vgOZ2BDGFGoWN8b2ZIKHqN8J8qy6XuepL/pceifUxZ+O2jSkc
	 Jha4tMqT5yJqkf9FC3xhdHtuwcAse4ZXsvb8nid8c01ZoZQGYO96monldvOs7SJZoI
	 ztZwoBvLoTaWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75014C54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167310368746.16994.3371837665458991538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7da9a5a0e727deec2d2ea9504de619f2f7ed0e57dde15b0093e50e1e4e0dd4
Date: Sat, 07 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673103687
