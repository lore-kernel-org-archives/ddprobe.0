Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A1C7A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 09:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655372819;
	h=To:Subject:From:Message-Id:Date;
	bh=Yspt7F+yggKvYBBi2z5JF1HTxpnAJ76D9QCjl44kngQ=;
	b=ItHXZeeVXg4zfBKkICSkKfufQq1cjOCiqc/D4l/4HL5qQZZbvrAMZHkMH7bzQCuQ
	UT6Na4DGegNQvXoVAChpHHTSSHL/LFDUQSChGlE893o+ztCegiVpm79pwFFoE7OFjGm
	U/zRjJEhwqtZvQCsXV5OdGNDLtX9fhtSLZE8uuSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655372819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yspt7F+yggKvYBBi2z5JF1HTxpnAJ76D9QCjl44kngQ=;
	b=PubsoxuXLDsZAaC/x9+C9XjjKE5S0WLGEzTHGWEdQumJ8Y2G1/ML194j/AagBNP4
	jevk77g+AV8wUFmAbEkxjQzSQ23yRkmIDGQSpiqrNNXHor+Slqes8fIxItiilwTkbJ4
	5ZqhAnVRefVyPkkcLeBd4e/qwtoJIzjTX83B9GgU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816be8ab2f-ca8ce666-83dd-440d-8371-16d94496df1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90b478b556b0516afdacbd1b6086f02910d451243f0cbc06556ce59499200b14
Date: Thu, 16 Jun 2022 09:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655372819
