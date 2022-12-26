Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E55624
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDCAC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672087887;
	bh=BDsAjP5TboDYOc1ljS1U8OdA763W5B+M8g+uVMfTXHo=;
	h=To:Subject:From:Date:From;
	b=bJ+sUubzk/iSfrF07LOLhNezOsqh+z5QBP1xE2RM8DSzcM/IqXagHTOGmgawN1mvS
	 UM9wTKWQHzfkITXeX+7NCKS31XctJrhae7HaRjix65wx/D5J94ipiee/YIXlVwST0p
	 naeWbd40J0ZWDE+IdR42sBKYybcmmkIOuYay/Zm0Yl/jElHJTL2yL6umsFWsf1kDTQ
	 CyQ+SW10mHUIpOBpglog0MeTmJU5itRLLfEFm4wYQ0Sgasu3VnXVp99L47xWCtJemC
	 rI1XwaqVIOgJ47n8aQeAGB2I7DkM+S0rwsgoC3e5PvQk3qHY6F5vOM+E9q8LOKc9zg
	 /j4spYKxcA/EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E21EC4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167208788747.31545.1104413933896124363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1527d301cb215eba7d49740f16450a66b206431e1b0614465554b3886c8f6b7
Date: Mon, 26 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672087887
