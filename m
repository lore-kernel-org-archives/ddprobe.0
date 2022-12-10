Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44CBEA4
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81686C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670641287;
	bh=OIcDIUtMjZOz94Rx/XqlZsgao7/BcNcaqtO17CsT748=;
	h=To:Subject:From:Date:From;
	b=M16sniHDjEOutxvoOEiH1rF+D+fXa4VxyU3zdHMTQfFf86mb5usRNl2sYpxMIbKCu
	 zkJEtmyIPqBmjlzWIIIuYmNpnG+UoTz1fQoiDhwUQcFs5JCxTOlwNu/kUJnPT1AgYF
	 zJM2aYoXFFVTHuY0Z55+Am7fWlTI9AJt8Wghr2ystFVj4aIgIpn/jqPPtvSKmvbbd8
	 EFIHA7EH/yaPVGuEAPUWCj/Zh3PTwYHVVvJ8Ihz6I6B3JEm1zekwefsMCgn1TbdgHr
	 DeJHqeO6MvvKtDx9Y364Kfc3PjtjF4V8r930Rc+/+douwy/9tdz0TFZUjUmK5QW1LM
	 kexU+08qKDRJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611D3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064128738.17911.6467630264942134129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509f20c52d367d27fcebc8525d86e7ac60f147a53026fbd777938e8c584d4da5
Date: Sat, 10 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670641287
