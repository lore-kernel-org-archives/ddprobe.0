Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD1D20F5
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 07:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649317138;
	h=To:Subject:From:Message-Id:Date;
	bh=DpRXzDLZ6vQtidBmPM2r+94KAGoTzplwjXhlENNjIdU=;
	b=cM/6L94+Clp1UEtBUqy30gvkWkvygo5y3h+sDzXYsvzUN6BSacrkfJYfwAXPMq6p
	RXkOFPBNJ7W/CTcC22GEfUTT2ge2Zq5sQon9NKwG74ZEAxtRH4LmBfJZyPQTbXbjPkR
	MxcMqFDF1qu8e0lHuVLAbZ3h7H+3LFDJuFk8bUeM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649317138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DpRXzDLZ6vQtidBmPM2r+94KAGoTzplwjXhlENNjIdU=;
	b=avyiccNF6Sjvwvssuzl7Dzg05OQK1YjDC98fDavRZ6X0QfT9tRPRU3t7KUUl3DPu
	4nmvc67ME744OedJWewCVJroMujxXvRe244oG1Au+5BbroBt1cPr+vHpFjmSBQokDcl
	fXO2J83Sx74rgmALGrxYbzyFk2wsoGkX4AuoePI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018002f64f60-7e4925db-6a78-452c-a95f-8d4611039816-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 345ed6a843f6d0f5022c02d233e1bf67d3f7fa62bcd8b7e2d2beb03675509555
Date: Thu, 7 Apr 2022 07:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649317138
