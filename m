Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8F91362
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C152C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668733254;
	bh=+qaOkpaTJADKsctPNqJ38ZwOPZn00s+unNZQbVuZLE4=;
	h=To:Subject:From:Date:From;
	b=GqJX2ft9G2HElwJajeINsLA4iMKghsCeJP0DJtVJmq9qu/MUV422VjOS9nNMcdZr+
	 Fw5cy0hB7COwzjsF9CuL14N1fQX/LEmm9oTmw6/NM7RZZtPlrGXmExL0DMHnr8Ex2H
	 0PNdfmmy3MdddGYrXiPQftFuM6HQA7IXKfhquLaJw46jxsDsT1EG6+NJfYPOPUel1T
	 4WWeNztjEIXycxz4FWuRe2OuMLQ3LgMwAUZ9QiCLXTx8HU1Dn/BZA/vumAQS0HFzo/
	 kVrQRkiOq0WxwfIuVOF1mQo3tQmuaBZA0VzhwSs5elOxufh44wmx3MaOv+KTKUsEpE
	 JbHof4ppkPt+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5247CC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873325432.21409.5256187217749585607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1199bfdabb7d771797a086510b6f10ed1bb4a544a2907fa4c71f65f35d63cc08
Date: Fri, 18 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668733254
