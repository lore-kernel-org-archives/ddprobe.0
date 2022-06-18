Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147777B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 06:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655532419;
	h=To:Subject:From:Message-Id:Date;
	bh=HzZPTDMsQYuNUHK+qXxqBcMAsFqh1DfMCDYQW0dkhMI=;
	b=ig9phe4EEcKKiwv67+DO1wkEMSwiUUtJkWhevTBZI/xq/3gOvF22zFyiZbYBcLXC
	hyvRayU1v8lcuTHixAAjLO1F3vPGYouZVZekW4PAET7Uhb+92BgW5b6adfmiBtNCqiO
	3YpeHYWInb9Lx3+IeDKjJhLr2xYi+a5VEPxIOnDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655532419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HzZPTDMsQYuNUHK+qXxqBcMAsFqh1DfMCDYQW0dkhMI=;
	b=PY+kF4hnauAC+aOJUFXcu+S7/YRB+Q4koBX3BJkjxllx9weard6tP7fQ6V3d8ajt
	Or5QD44Btl23vkFJRs26LEmXrFvBWztJin17KgBJ74WThWio4ZMRdbOPiY15aVDpWQt
	YQr071ttIhqaTLfcDODu7B2w1Vq3y7qzV9ObuNNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181756bf87f-f23b7f68-6e17-49b5-afc3-8f9a49fb6ab0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff42d3e5765db926bbb653f1a587c82c6e80e3031a9dbab815112d5c18d0f01a
Date: Sat, 18 Jun 2022 06:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655532419
