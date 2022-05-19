Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E62823CB
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 08:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652950679;
	h=To:Subject:From:Message-Id:Date;
	bh=k4MQ2m/JbCOY3En2X1NadefilH7ELk0umLeCcwAZrmU=;
	b=Iehyrc5KyeX2kxrD8v9LStM6HTc1TS3y42FjDiUmrzXRQT6XFdUlcltmJ1wdKW0c
	J4k5qshWiGn3ezWOelBcz0ldkA2Bz24iVF5IMzGlsVy75PlcTVWUu53gwZpxH0NMkTs
	asFeBXFQ3L1pTZN5Fl+LTxzBnVyFuCxc5Q+RVug0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652950679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k4MQ2m/JbCOY3En2X1NadefilH7ELk0umLeCcwAZrmU=;
	b=VSGllyieW5uI5CWWfwJkr08CtBl6rAfCuWXes66Hqm0nTq+hLhXIRE2jbFqxpKuA
	k1TbvK4xGD6ZdlgPs2fV6h6C26aPUp+N7h4Z1W98Y+H+T5qyGrspZxKiplsRALPHz1y
	5F3uTtUEMvSrG1p07MoBiGyAjB+KyDck3+vBLevA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db89bef9-6aa8b0fa-678e-4024-aa26-811e7a00f9b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a228f0897fd8c5e70bc3f218cd13e9abb3e50f4eb861a997e74175bea3915264
Date: Thu, 19 May 2022 08:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652950679
