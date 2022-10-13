Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BC317C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DDAFC433D7
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665627653;
	bh=cjMa/5rTjXafD3BpenOMRMsT7MKbgp+co5f1cD3smmY=;
	h=To:Subject:From:Date:From;
	b=u6zbnWdTAanYNnjwjGOzpVaS32FvUtPsv2BqQ1toMyRw7OPwSmmxuRbqJKf031S9X
	 YuGhqnlJ10FhFb1KzdNryCO223+fyBHPE/Esq/WnClCGHXnRGXeKoxbkJqcVtnsg3P
	 tneyIPoouMiFFStVryxGfhaJhd9iHLGsAxsfKgYuGX2wysahqiI1iVh3UxAHY2jlM1
	 e4pGUezD/rcRGcDcBFvcghnII6ikR/ywne80ODyXbrhor1XZPiko43E81QDf5ABzfI
	 ecuqtL39NHF4jh6OKNGrcFjvUns/RFKNwJPTXXjDhMatXUgGc/QAG58+XGGbdvsfw2
	 PcdXww1+0eVZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B57C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166562765337.28098.13541539362431546933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998420d121ac0c07f876ec975d76ee510d03504de4e584fe6314bc62781d7ddb
Date: Thu, 13 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665627653
