Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626241364
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 11:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655119859;
	h=To:Subject:From:Message-Id:Date;
	bh=NXvBUKuECIdvRqk9LagR033id8OhQSVfBpZCJ224A4s=;
	b=UlY7zME/KXq1g5U9xkSWtKuJbJm+1aGeJueJ5xu5CZOX0oudWIeOZxUI+Wq3Tidb
	vtCe3n5ATBpryK2JNSaeUJM+vZA9NGxkrIe58fDPlXdRGvrDWb3xUyEU7AiK3Sx2nGn
	LpYitczha8U2u6vc3ABlrr39PHcgsTHHdT0Y42VA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655119859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NXvBUKuECIdvRqk9LagR033id8OhQSVfBpZCJ224A4s=;
	b=UR8zhw8J5i5Zim1tlVtQkJzNw8o//Uqb+sVarNeAniuSJUfpimU6+ZG8avRiYg4v
	8aCKE0V/BSfwQWBwL+V+kKhFy9+3nKsbDHEwtLGEelkyvnoAXTZPQEJo73RSHPXgdXQ
	KQw875o9U172XqywJDuBEyIXF/9p29HQ9gXxKsns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815cd4ce29-cbb6784a-85fa-44e7-8f8c-c3068484ce62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff85f0bf7090ca77fbf182e6972a2a4d8788f481be50020fa920d2a54976c78e
Date: Mon, 13 Jun 2022 11:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655119858
