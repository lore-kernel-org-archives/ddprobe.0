Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010B97460
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658447212;
	h=To:Subject:From:Message-Id:Date;
	bh=JK8kyCy/PNU2Cz/5hdYy0QIHdBLeOGYhddQmOtgS+Uw=;
	b=Y6NfwIq57qcvxoSqpCjb2AqjvGYa+m3hv/Sxh46yiviNpb9GmqtVbulZpHSTqkB6
	q3r8OgTAPaiV85qx+MQBfSl9eb6LpyrRiDu1wm6p4PSMFHSgM3qsgmdBmazzQOQKxiz
	IOIJMzlYs+eBmnt9iGB9w2UTFLE5cdlyAfxskISE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658447212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JK8kyCy/PNU2Cz/5hdYy0QIHdBLeOGYhddQmOtgS+Uw=;
	b=gI+3dlNbTxpjONODBlkz+jXNeWNREWna+uikNMC31yFX6gpPvgHfK8COQZIJOrq+
	kYslfdjPSuN3ZarotuUIQI8ez0X7mkk2ek6SCleGxIOPEjcQ3V8SJH1C1A7Eg5XK4EK
	Aratno2qXRA3vB6ZqDfSW2ifvoNEmIZzGHOsFQpw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018223282f06-8d67d2c6-f587-47a4-9517-cd8a4c9f4e63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a68d51de9f4538a799c15219a3898b4f1ed54cbb8257275c96dce6c7f79d9e98
Date: Thu, 21 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658447212
