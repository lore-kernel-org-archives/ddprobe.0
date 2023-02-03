Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423FC7F
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 07:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA95C4339B
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 07:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675408565;
	bh=wzCjcID3LGYZYRfj3TTJkSh3lFt6wHSYXwHJRKOmbmM=;
	h=To:Subject:From:Date:From;
	b=h8n0fRlC7Grcbf8T51XPfuaWAML7C2QEY4FftV/E2MY5VIC9uAFZg6eTugL2Y6nP4
	 bem/pWfQgUDUeR7tgr31tHRoGRBG9UNkl4s3T+5DjTgRe7LTiVEiBx1JsVLslSCiun
	 F2HP7D+iW5QGHeagphuupo+BxWbMEN2jrdy0Fat4xVY+VUwmxznZIYQ+iOQkBHWvsA
	 ej1LtXOQkN6yFApCy7HkIYAPNmZAYLGJJSxtgGJaJpsQtbhV0gqqnllOOcmtxSVsgf
	 aLSFbd4p6MxiUo63+HxQ/hGE3d+qq5Yvb+H4nvGM4Etg/K9+7DQ62DHf2Fe5oZ1RW+
	 zd8eSQ98EINew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09B1C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 07:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167540856576.1436.10980497746895742168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8e5c42f1548b61bfcad1b5a48014d036b13d1caa5e19c4fa4234d8e6f8a2c9
Date: Fri, 03 Feb 2023 07:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675408565
