Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F174B10E5
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 15:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651158778;
	h=To:Subject:From:Message-Id:Date;
	bh=ylI87eAsLIU7AVxCA2/0cwapqLDozYHI+B06niix0xk=;
	b=Q2RK3niKZEaWXaqLCuxnFNwZ0S5/2u78WBlpiOkhy0FwgFtcpdqhRLfFCe3B4XtH
	pINessW7fyRoGTXxpWawTZBPztvHQGzOdrm8rHYV/xVhyFsyycaB7H6rVg6wC/o4H9K
	ZbFQ7gKaQQ4IydR/wEKxmPWBLlVfczue/0bMzw6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651158778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ylI87eAsLIU7AVxCA2/0cwapqLDozYHI+B06niix0xk=;
	b=SCaPUpEMXZv+lFkvagBnt6/R5eoY54z52nG+T9cDaVW/jkAaDdEkcb0qaxw/qPED
	hSNDp2hbNODTHeALQjunbf6Hp7DkMszJVaJmLLOMVNv3t09Dds2heXzh1NLzghkyuli
	4yW4wbWqrsaAey13nQSWyb5MX3qUypQR4yjnB1Bc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018070bb8182-df622a46-ef55-40ec-9226-3cf214f8b19b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34a64f93e65225c058648db5a5c67dcfe2ab73dedcbdfb137748564e8c9fddf4
Date: Thu, 28 Apr 2022 15:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651158778
