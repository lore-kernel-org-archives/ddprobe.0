Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B5A7F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 09:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655457119;
	h=To:Subject:From:Message-Id:Date;
	bh=BviN00+avGn+miTP6W6Qn0ScbIe3fFGfFxho92cRjVM=;
	b=K+K8ma65jtE50SRpRbiWpGb6z6Ff5wAatNKurwgqegpJSHu5jwTM7Nuj+mqrY++J
	s8CLRMG8NIf2iizkEsmzbBj/VT68/sC+NZSJleZYMIXi0gkvTDB5u5XYJR7AYssC1AZ
	U6RJtKz/LTzVdlYAvuch8VvbZ++4hKgrAo+TMyvc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655457119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BviN00+avGn+miTP6W6Qn0ScbIe3fFGfFxho92cRjVM=;
	b=RAae6y7LE4WbrlXE12rkXpD5u2awTwBg/PbzRRssKJRu3Hx17Wusu22nJmv+Ymk4
	TH39PZPHzO5s+SUxKGGwmv/JgelXV8SzrkQdPG6oOxz8Hlf8SG26dX+nGd8kDsfz5Xc
	CBS9gtU7DFxEUvg2Oex6VMIzumeyxs9YDR3a9WGQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018170eefc1b-f5f43ea6-1796-453b-a7cd-7c8e3f4bc121-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48b3e0a3bab74d1c14160518db48122816ec5dc2a23b4e0eb361cb7b30bd1bbc
Date: Fri, 17 Jun 2022 09:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655457119
