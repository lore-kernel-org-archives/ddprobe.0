Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1BD23C1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656888412;
	h=To:Subject:From:Message-Id:Date;
	bh=wIjzgm5ol+G+FVhofJ5GjdGUMgnpcIai8gAh4ssz5uA=;
	b=aJbrSGrGATBktUrwqbkdpEkIUm6cyDhV3pOFiPSQ+ChKdQzUHE6X+Io8FGCOaw0M
	id1ijsDWLjrivSv6q5ek5GbT4LDJwBQMh6yCBg5EQ5VrEKzBsdMatwjacbIJ+o9wXDY
	qUIWPC6PIZ8YwegdBn7gUT65Z1Wl4+iowV2XB3jc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656888412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wIjzgm5ol+G+FVhofJ5GjdGUMgnpcIai8gAh4ssz5uA=;
	b=Oj/nL8glVu90sQKFH792hOgoXse3o6YQQhWO7qMy/SLauQJ7ORBSaHyLMSrc63OY
	Lzu6nh8QQ1Xfq1+PGky1dDiwFFp1jR/1lO2hOyP+P8FgdliNy84+LOOS0OsXiD8N1RV
	0zbsvY3840FSHFyDrnchWeOkuM2XmGyI1lxQd8sw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c63ec8b4-e17c2a78-e6bb-428a-b066-10185713a6da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55ecfdda227ac3959147a8c3252ed66474c629fe441c8ad8896c31e9869e0a4f
Date: Sun, 3 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656888412
