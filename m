Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044D62F2D
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 13:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649250478;
	h=To:Subject:From:Message-Id:Date;
	bh=w3JgFGlslC0Znbe+V/UoYljtpBtT2QhnnLtkhpcyAGU=;
	b=UqeLjeALCwxbgzh0U5MH/GeobUKwl3ckpttDm46BombY+q4wdqps55stdv7EqhlP
	7qiEIx6ygrPOLvnrxCfTIeQywtzmoeoh9U5J223LgH7DKsBYl4EBg9ZelTXypeaxOf+
	XdxeGeX2zymli35MGsb6WS/ktTWb04lilp52n9Jg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649250478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w3JgFGlslC0Znbe+V/UoYljtpBtT2QhnnLtkhpcyAGU=;
	b=bFOeiTr53A/POerfD2Gm3aFYBbz/T0Z0POWsNpdbqzQvz0bG1FiIcCrzTkSf2MZS
	tbc4C7blWvfpRXUyZer1qmy1uOeyv3IrfgpiGEXCDcGUX9Ev9CUK6rAMw7DyhuIdqcA
	CC/dUU+jLMN02oN6NQRAnJlMUaL7KW0yvgGdIkDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffefd28b1-518bd3f4-6b21-476f-9428-05140a9040b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2353065a8a712c5d3d5f037964e2d3469f6207ebb4fca9bb61215dee2349e8a4
Date: Wed, 6 Apr 2022 13:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649250478
