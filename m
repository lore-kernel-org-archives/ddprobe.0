Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515651C68B
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 22:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56C9C433C9
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 22:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695077108;
	bh=SrQ/RESXeZts1msyygnsuc2sg4DgCCJqRlA4oMrT0E8=;
	h=To:Subject:From:Date:From;
	b=iBHQesWJTztNcsEXVAwR5ZdYhNCZ37xPs+mOAyNpmKnXGHFk7dc60Sqa1bJMnqiVA
	 rNFgOSaECh6/StTW7+cFgk5bO9NZAiXuYqiRrc9bTBS5FufKosyI9zYDpHFcCRbzzX
	 mcKR40JmH1Q3jD0hcDzJ8+kDDZUcl8uw/RuXXSbKozpB8VJVxfgaNXjE/nW4WRFuUc
	 LFW49M/asN4TKo87aA631Jkq45BJ+rwP1xhowXZU8wDESTrNvplq5REbLGXnXrUT+L
	 8c4i7M9BGxJKoLb2XOnJL4Lp6UHKX/fbOeMNr/Jegs9tTgV06+Eu02PHX1HdnWCVKK
	 VBv5OrYJF+N7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41D7CD13D9
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 22:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169507710866.14342.16158017268598381048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4b13f7be9c4e5f4797040a6a71f7dba4a3e5760d5be199598b5cbf4da9c365
Date: Mon, 18 Sep 2023 22:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695077108
