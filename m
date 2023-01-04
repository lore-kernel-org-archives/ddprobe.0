Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21D9636
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FEDBC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672814487;
	bh=7NPpmdyH6ho9VGm9I4GrrSD0NqSMa6N7N716/iqZwD4=;
	h=To:Subject:From:Date:From;
	b=nc6F3yaSIqWhSnyIyHLZg9MJ1eekkKzLYNccz4AEcs0TWFS362OlcWIk/XkwdVLG/
	 ChOY2M5Fxxum8K4v722LULp49LJ6uVhzheQsiu6BLEPcm1z4cjZv3VGE7RSp4B+1fC
	 pp/XppIM25w53sxc4zkx+8YfzpeJagFEJoz/0cvndBjWMYfatMExFbvt36UK/9tofB
	 bsgcVWEh6jkwC49O8Iu0v9qfwganNSpbuUt67O/EsSrL7GNLKVOGv4C2b30JQO0DX/
	 1Udwx65gGw8uFB+ZdO6kaiXu2oy2VFFNPphJnFFC12r1wRs8eI7GTEZopH1W4sCe6/
	 Eo/HPLYLgDNsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D2A6C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167281448743.22160.7923290432497050113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49243d75c905ecdae7c695185b2efc881e18f954e8ed4a7882ddce092ce186da
Date: Wed, 04 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672814487
