Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0533C2565
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 15:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652543699;
	h=To:Subject:From:Message-Id:Date;
	bh=cxStJoatwxOVnI8NztoNY88EuhBsf3sNtWNmJMmeLek=;
	b=BRge1us3+t+TtMxh1CbELF23BzzHdKtwubxY89U3gtczon1cwTKZ2mSuU8ZRsGXL
	IbJK34oEKDs+pqa+OA68nu+lFYCpm249+N/tFssBXuXqnxAJFoHS7bT/5QDq3PRm7tG
	DgMFFgu05QmqNaNdydSe4vNqR4EeL3Ycf9CE2yIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652543699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cxStJoatwxOVnI8NztoNY88EuhBsf3sNtWNmJMmeLek=;
	b=bV1Cu2zWzV9jlFFgpC/hlIQMMiPuk4FEabZWlGKpDD686Y1MQPhnLOmM/TOq2G98
	GiE62KmPdGyRa88zimopRHKoYVvl0ySn28t6MOqJkd1tosRV5e/eFMcI8FwfjYtCirX
	x7H9D1eq/BtAL9YBvrimJ/jNcZ6S5FlLwqdlpg0k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c347b96b-50929fb2-6f86-41f7-b2a0-968991adf8b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e4c431e0ca1a68d45a7eecf2679fad6974d97ec02a3ad00e7d852a92b17e956
Date: Sat, 14 May 2022 15:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652543699
