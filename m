Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C636AA56
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72120C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665913853;
	bh=k1RyC5jcAk6Eu8XJDbQefK7NCuYWQajQAXlJ58CqVoo=;
	h=To:Subject:From:Date:From;
	b=QUdbYlzWT1+eGm95r/18E4rNJThFrCl5+/7/KqlnjvHbJMRGKlfRRYODV2R/d8TDW
	 7modBRqtNcO4FN6TM5cmJ1L2lEjoFcLSbMRp2xaQSipWPTfpZ85smqvpNWVsUu41M7
	 xiVzPxfwN2jL/cnIwFFDuQ52hbkarjwxLgwOop9e7VFNCIFG4f8wAseujUoKhTk/Cw
	 HU+Z6dpCEUW6/3ozwX9PQ8j1f/aP0Ao3G6LczUIQRv7q7njqoB9XNvpdt3vIII/Tev
	 c8dXiEbBsagO3pflAuRwQJFwcL/HQdgkpGeIAYs9RI+IKy7kn+d8LOPrHcQgRhFlfn
	 vIJ/D2EGkeHmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D9EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166591385334.30823.10744642117384946304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30d0a8086f00a4e7113546a817a7a029463eb06514a92180a041f8332b40e8b
Date: Sun, 16 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665913853
