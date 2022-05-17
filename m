Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540691854
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 17:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652807399;
	h=To:Subject:From:Message-Id:Date;
	bh=tLeYJoWKxKmH7DpcoTpTQBXu1yvlS2Isy1a1znoz6n0=;
	b=gSmQ0PNOcfgha9mrghZYbUUPY2oN1shtl/+qxM/Tr7R20zlmgoot4asoCOpsb4IP
	37O0oScdkXzxTQIe5F2dj3qo7/cr3VFfqMDtH0c7jPgBUs/ZebQtroaXxURD7vNab4s
	/8DStyCsC2WgLwjp9Cpr8er9oaMbc6vfvRdKHBzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652807399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tLeYJoWKxKmH7DpcoTpTQBXu1yvlS2Isy1a1znoz6n0=;
	b=JQbWPcRUVKt1G0iJw+GwDOO9cyQAW4GK3VH1OXnByTaKViQxvycVNq4SrZKyrA6R
	JN1TPTRGLVV8U6c71+uPsEdden99Fpi78Fbb8acPc5uxoUBcDHr1P2pXo2R3kbJijX6
	O9Zw7xMdbZee93NEXfvmVezn3VzYJyCBir9IhtjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2ff774d-45e695f5-f5d7-4c11-a904-b14acaeb6429-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 744071be2dd15224ceca4d434864d4ef8a25f85c20812fbff342142b07f8bdf7
Date: Tue, 17 May 2022 17:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652807399
