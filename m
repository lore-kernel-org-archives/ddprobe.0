Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E491FBC
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 11:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656760012;
	h=To:Subject:From:Message-Id:Date;
	bh=8xTaQuz8eBMwtI6MiDqzSywF6chePhUoHW8zcziw6xs=;
	b=Ci7nCt5MFSoI9jgytfMURsd0a96WprDmo8MYbpEpW5RiSPHoESJs8B6tGTRx7x9Z
	nzAuHxv8DrAybqMxVlvb6RuES3QrMI4Lxvf1jsufmnCKqA90zuje6KMQQDFlQKWdAyQ
	6le3tQIN1HbAz8ThWVF7s5LYGi86W9ZR+PJczjIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656760012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8xTaQuz8eBMwtI6MiDqzSywF6chePhUoHW8zcziw6xs=;
	b=hKVWO8qOd0xx64n1RiqyxvDJeS9VmDUrPMC7qB3msD1TW0Qn/Ek8bTKtqeu7A1EX
	4IpOnc++fYUmYa4O3L/Zsb/ZtvjdZWXOS83DUrYccuGrm0U/ObiXBbB5yCVbrWfK7Y3
	LIqrXOj1dgQOFfp8LTBoP+HllvqttJ980J1j/EcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181be978e04-f81f5736-3345-4ab2-9632-62d7d81b2deb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96d582db8cdf3a8ebff7d321707c8f5296662dbdd8307c958c34b858f08025c5
Date: Sat, 2 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656760012
