Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2CB7B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 03:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655695439;
	h=To:Subject:From:Message-Id:Date;
	bh=hcClE7HyvVw+iq77SeQ6fF9Wr7SOt79BdQojZ/KAqYQ=;
	b=I6aWcohLZbXjawgc98/zyo4ILAUNSgyurWpDNp32c++0nS7oz5MgH5FIhtkn83qT
	0OOfXZkSsm4fKcnooLLcVpp2cUhePDkwleq2rDUOIYB1e5ygAwuEa3okSXrbxzKahdO
	POWuzkxr4EvdMRv1HJvPN0bJ0BA2DMljE2ejHvN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655695439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hcClE7HyvVw+iq77SeQ6fF9Wr7SOt79BdQojZ/KAqYQ=;
	b=Onjy1a/Zk0Wz2YSowgwGfyMf1LlvCvuWRMqbAalGUp1mTXBB5On+pAS6XP86Hm94
	6AUsPeA6XCs6r8gYO2m2Y/8vvRMK2mqk94eAaCCqwE2DRAUP+vo59K0KqwO5w12WTYc
	qRlbp2MLqVvYEw375dAukK72ZTPwfDb8soed6SrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f237582-831560d6-a78e-421c-9f98-b6e6edd41944-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06b1fc9776cae8fdf6a1ead6235982ebb15587e40d0c2ea4b1036b83b7058bf5
Date: Mon, 20 Jun 2022 03:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655695438
