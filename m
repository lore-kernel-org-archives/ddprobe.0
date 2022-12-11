Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7BB10E5
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA93C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670724087;
	bh=liTvTqv+2dUd+KaPU+XB2Sm5TuvJFIBIXNw8vdL4Gxk=;
	h=To:Subject:From:Date:From;
	b=pPal1q8QibT0g0Wqmrdz64ABsdUbXHXP9ZNNsdLlpP7CIzBNcXOz/x37xGPVnwDuF
	 kpT7vPo2OnRD6c7zH7R19Feopw4xGtZL7sGnUVu2fwBSPva3Q7shsUrgvazFwJ30Be
	 L54yRCpVsN4O2vL/BLO88IO6kyOiKszE1sAKm0lMcHDFbN2C5Smcw7LACuca1QGKjz
	 vH14FyrWIs2xNb6ISxB1G5ppN4Hoz+NiIN0dBlS1Gll4IJTzRtOZDDwyoHBWsdA/wD
	 p1yJoTpd43SycWVm4K0scL1X3d3fHZtMgVDEgCve53bwZSu9v9gBYV3hmd3Cy0HpWL
	 IR5v1XnQv1voQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63260C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167072408739.6796.9382388585102982386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0d7215932301c719327c0d8f31d335583fb15415906823db06f1ea6c032dc0
Date: Sun, 11 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670724087
