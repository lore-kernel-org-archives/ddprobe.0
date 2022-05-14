Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D25E2F25
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 22:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652567340;
	h=To:Subject:From:Message-Id:Date;
	bh=s6wNpmnkmdUYu8ojURZpFQIq7cPrcoq4nYtkuIGWVY0=;
	b=cx63sdNzNLjxaZBNRX30ePtwKtqeL9nmZzMMX9jKqq6KSnWVnr79MtKu+F7/Yyr0
	J5wMSu7pejeMT4dg/GCBi1ZH1lRSyz12ob8GQGYB1EdvdGuAlqrBAz0z+v6fw6QeBHB
	bH02FwRei208uWU4WhuMrpGzngOXfqp7vgpgfaxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652567340;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s6wNpmnkmdUYu8ojURZpFQIq7cPrcoq4nYtkuIGWVY0=;
	b=PBqsLyydMka0DrMvpPmuvADFqekZ37q6bInwVfgARbgFjZ7SFfsLyGOgHYqoIdjs
	zjha6RkMNiZ/BwANBEm+qRdTmj/NIM3LMLSyQarhOykeMnjLumSrYMi/XAKx5kyji0n
	7kV9uhrGuM/n/xU7hsP2bfrJju5IA7to08yUHAFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c4b0711e-331ddfd3-9501-4dcf-989e-dae585d6c290-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06e2f5ba9159af869f95be324a1958f078c637d2a1d4c2289f7ce4135209fce9
Date: Sat, 14 May 2022 22:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652567339
