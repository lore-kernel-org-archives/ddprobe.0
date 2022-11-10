Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5C91A612
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF65C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668103854;
	bh=XqYvsNMqfi3yTVcJ7UtZKi7Vsl31ZfnvhsyrpVdgffk=;
	h=To:Subject:From:Date:From;
	b=fXGTQoW0xbWQfo2Y26HCWkUV2PtN8MU2ieDuMwvNkEuf8Zhxy/N/Ly1J0S/9bFz0p
	 xZ/MeP7dXs2ahRKUUWuu4WEj8chCWn0GjNEQDHxJScbK3ANM1wptJhw1ZGFFo3u1sn
	 DUUCF9BskGjCH0sZ9PcPbwelgaJPtIJ5+0r9fKLb2JPpmy6J4AVv8DL0NQSpMjHWcE
	 hx+7GMuGcTGtKuCRIp9QoXzX1Wb/MRcnbtDtss1e8/lqy7bhcu8nJxxv3DYqrhMH78
	 GN6aZQlQjcFItBIY9E2oslBw0XzpSPUhFWqI9Q7zjcMvhPNKa6DYuSpWILNRnnacdQ
	 YoYlLGHTbYvnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC3CC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166810385438.6969.5377147064575720584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368edfcb9468721f0079aef77152eb4bc74e427d52cb675c0646ac0e9d3287f3
Date: Thu, 10 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668103854
