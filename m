Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450E2125C0
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 21:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFF2C433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 21:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692653048;
	bh=E/8oDkoPAU11aW2ynKzT0xAQxUL9/vFrwcHjzWum7gE=;
	h=To:Subject:From:Date:From;
	b=nvEapVTp8GhFCz6XEQIPiZ9K7vgPO1en3XgtYD87uYEgy59dpetSkTBtOPa+AZ/pD
	 Ywhty7mecsl5wVMy91LMH5U7oTD8cKcJuWJgQei0yfa8CVoEzD334wDmIYFGYaFb2J
	 0JHKSozM1npYHDZYxdHEtdKkI6HT2sR7FAD74PJ3pdV2mS+j2rlbFIrv1yXMuuOZNH
	 qR/drpNgOevFf5bdhY+gSQ6mLiGmBP1fWAIVBYOh6E3ZsmXwzk+8cnDL6q78re3WVZ
	 VzEvYvIQMjCayTreOQtjVVhX4weIByYJG/I3cWGVyHahaMN8AVXeIWDOE1THiX4bej
	 DyxwPADGuemkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10CEEE49A0
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 21:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169265304871.4482.6707923002638159179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34aef0c1006320dc78e1f8b98d237e44ec59bf9fd6aee40e07fd8bf23749c1d0
Date: Mon, 21 Aug 2023 21:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692653048
