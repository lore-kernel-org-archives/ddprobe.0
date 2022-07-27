Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70AB97EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658886652;
	h=To:Subject:From:Message-Id:Date;
	bh=KbhQvWsfyaN/MIDZ1yJXf8z/AQi1bygyaozMr/RP538=;
	b=eUZWfdrx/ojRswQaL1dUEQ5iM4xBgDDByiTUJv5i9ZPRcmq+hC1RGEuFIPcOCisJ
	Eu/5D2X/3uRiWidkN5UyjcZnwvH2XcloenYZfNO9yhCzGjQ4gbqhhCHAjbaKHpiOHpF
	1tOgueqxVgHQmD17igq0JZ+0wZmgB0phuxZWTo8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658886652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KbhQvWsfyaN/MIDZ1yJXf8z/AQi1bygyaozMr/RP538=;
	b=jSSfsfbgVI3VPjzX2Olf6GDxnb6hEzhZhOzIz5JiKJrVuEV/h7tMdt4CXLYsZ4au
	gQnVpDxu2oScClCHKYHwnnIFxXtxp7VDifrREI9plXpfYFc8AUaT0o+s6GmjcP85dVo
	O3kX3Tov6ivCiViC7pq1lgCH0bhhZ+U98Pl53ODs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d5982b5-c8098953-1df3-4ae3-bd94-f03c0499e5f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b398c01ddd9808bc2506bc8d97bdac72a8dd4bed59b818a9c377de54eb6da5e
Date: Wed, 27 Jul 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658886652
