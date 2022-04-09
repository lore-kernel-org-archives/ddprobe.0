Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09657EF
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 08:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649492458;
	h=To:Subject:From:Message-Id:Date;
	bh=x8kjhmiCz6PSsFgBrpSqJTS8Ngx3aehsVdzvFaeVqNk=;
	b=c0fGtiPULwhUhz42CPl02aKwfCLIR5n0Vc9hDeDVFdzTx9LJRZXSCoAtJkICbBWS
	Og/Lz+Z2VBrOpmfjM9uWlYEgsvJVqaAu4moxzbSoGblOWCxVNgBuZRS7+Uv8AJq9vgy
	SgUmoaN6PPFppgenXIkaA32Ayw+8ydifZ5oZ5mZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649492458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x8kjhmiCz6PSsFgBrpSqJTS8Ngx3aehsVdzvFaeVqNk=;
	b=FEwA5y3lm8Xkd59TQrVqV7+PSgTRJw64w0wDNVuN8XtUt7aCFEwWEXhLRmjIQ7tu
	Q+jJRhx4f3ArDqmbis91w2h+fHlSTX6p9dyZRzOE9ZbQC7odEpAb3aXlbcWC0ZPe2+g
	6S8201m6G5VQzh7mYflEzsV7NM1/OSzpRcd/LWfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800d697b3a-9b53f052-26ae-4372-8a2f-c0bf1501cdf8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fb1b4071da634624e3aa024be573cf0429c218a1a9ec8872aa28a32df1ccb92
Date: Sat, 9 Apr 2022 08:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649492458
