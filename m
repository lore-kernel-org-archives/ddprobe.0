Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7766192
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87F22C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671057087;
	bh=CqH8g+7Hiid88qcyXoI2AbFfbGHAlyRRW99q1cpawww=;
	h=To:Subject:From:Date:From;
	b=NBL2dEKrmYc7g2MRJbntM0nDUrYOgOOuzQ1arSuCphK/1sM1ze5aYCAjfR1K2EyhE
	 unqy29vhSmozv2NFcV+svtAmq+YtsJTnsiHKDuVNASSc8yfhrCZdm/sqM5PBVPl7gp
	 zEX335QTSTddv98ILqcUeNmM74Zgm4Otj6pXBVxW94au0oWaL/5ppnzW7QGpObj9z/
	 9s4znD0rILMbu1mC5SzaFALl18pgCeu3FDyLJHmjtP4wiyd0QBnvKCmqKBbL8vR7dx
	 ZGotYXWvM6I2iBj3jyGxRDr1fL3kVoDkARbISUIDsTZTrVsxVuslQGNBFzfqoqeDZ7
	 64Siy+Cb2bTpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F037C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167105708744.8163.7825248183662550586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea5d6d0168cc5a45c15287def89fb24d3f8505f45c54e817b345fc771cb7e08
Date: Wed, 14 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671057087
