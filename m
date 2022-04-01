Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31F37B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 15:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648826758;
	h=To:Subject:From:Message-Id:Date;
	bh=8eCfrRO095lhQ6E57E0wlQ+4l6H2dC5PX2sU1ZpD0v4=;
	b=UWPn4yAb/ncTrcU/R3BHnb93dNlHu6V93w4ZFjeryaaOMZ5Ut5YOuJbea+LSn0XE
	dJgIO+z/nnbxIZc+ejKsCssDMusUWIU83h00bIx0yJzaSw7dMgHDJmPPV8OF64BK/Ty
	fkP5hQZvuFd6EunLuP9X0jkDOZvxSJ+7/Zvgrz7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648826758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8eCfrRO095lhQ6E57E0wlQ+4l6H2dC5PX2sU1ZpD0v4=;
	b=Sv6fJLRbSBMr6bHg7pYwokRrrR4z5oS45q/k6fZwMED10nHcg2gp2JUzlWcBYoP4
	ufgmVJ6LrXrrNLp1Y6TtdAAcZRvO6U/gSsYN8dp67hv7YEtcpj7Up/AAuHc5KlaP8zU
	mtZitVCAudow6fS/AEBdt2cJ9d1KveIGD67RnMwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe5bbb471-9c38a6d7-e04d-4246-a65a-0662f7f4263f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd35b82feffc5d515a764528984f5079f1682218e5977c97ea970bd40be29bd7
Date: Fri, 1 Apr 2022 15:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648826758
