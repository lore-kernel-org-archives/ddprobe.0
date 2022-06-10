Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF26F362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 10:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654857779;
	h=To:Subject:From:Message-Id:Date;
	bh=VBgHRzCIPeH8IW1MyajJnQLSzWYZkfqC7uJ/eqPkkGU=;
	b=BWLSlDz437zKSv+JTtdZXgsnSDaNyghnG8KQenaZ74QV5Ar7G0PHGwFcCibQU2wh
	lkqJGlDlQZO4KUBbT5j+wwfu9QrhyOtbW3xGDyMAuNt4ypc+lQ62aOnsOF3MLiX9Jle
	GThurpWamwJM82suHJtLf/kQcfyKWS/OhwFO0xyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654857779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VBgHRzCIPeH8IW1MyajJnQLSzWYZkfqC7uJ/eqPkkGU=;
	b=NbIf64d5vlipITrji2fBTUPC2XXRTv/LO3rB3Q0Gg+TLOLq2Ctw6CPoE/WLWtNg4
	fa3YC9Vc4PKMCsseGRpwed/VJfKV9Kv0/5Wnx/f+JoAT2ZeTnmpoU83AiwXZBA/Znzo
	ffsKgrKqrKd9basmZdP2C/ADiXFikXDokkMMiAK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d35c807-b49397d1-7600-4667-ad84-a380ff92d081-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3f2f8d54dac33d6640b926e9f13cc600442d13cdb366c21b3a018f8a13130fb
Date: Fri, 10 Jun 2022 10:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654857779
