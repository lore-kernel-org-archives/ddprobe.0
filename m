Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255D42F56
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 08:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648281838;
	h=To:Subject:From:Message-Id:Date;
	bh=ckiQ+Qu463YdYmC4WX3ARTw7khUmcbLtzbkTxnMCBtc=;
	b=Yubps8pd0MdLka+coA6Z1m4R2FnZgWePDx1VGeKubj5cyn7g5OZWIrjhRxjpCi1p
	WuRIQNoegqzQlEiRaboYVDmkWLIdYkrsHMfgE1wMR4AjlkAkYp+14twByCQcqqestUM
	PId80s09es+U1yXp4EH2USXMoJyMLRwc7s59YQDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648281838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ckiQ+Qu463YdYmC4WX3ARTw7khUmcbLtzbkTxnMCBtc=;
	b=bT1/WInjKth+CwK5cHXtAnKwKh44CxQWxCFzBJgculx6uUEZV3jic9zIluo8jfpY
	9sHhYfdsoX1VwSSq+OM2HSqSCReO3Sjlot05FsuF42w3B3irTihPeEH8CfQwfyK7ajJ
	2SXzRzIKtTqZs2SRiG/Ri9p7LpqBha8tIirA+MO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc540e288-ed205aa6-0e7e-41fd-80ce-55d90f4ec5c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 519e07f0edc75b110fbda5b9b14c4efd210b4d2b8be09d40cb6e8536ffba121e
Date: Sat, 26 Mar 2022 08:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648281838
