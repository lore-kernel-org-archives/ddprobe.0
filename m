Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D4D20E9
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 05:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649310238;
	h=To:Subject:From:Message-Id:Date;
	bh=HKy/NaLDXMPHymVjEP38NeBOnzJ/qPuff8HuYKMwsPk=;
	b=f5ji0RphRCDGfbCMVxJhXaj8XfkP4t3dNFQ+DcSDq4mzLi8Oa/bfxMykrE7A/8V7
	fIYWs7ziTnwO2AZTqHl406PsvoaVNJCzULgPtUYsiR8zj4DEr90knE4nLDbR4aQYTUF
	gs3/mSmxMQWJ0kRQsYDctZS93uHMNduSO6RpTh84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649310238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HKy/NaLDXMPHymVjEP38NeBOnzJ/qPuff8HuYKMwsPk=;
	b=PRGRuZvVTffU4eOZizCWX2nL/AqaA5FnhIrJOMkkVy0MLUGBInoxceZDoJht3GEi
	YNd/elL9gBx2nRsmy9qYBz1R7fmwLx7x/yqRYmzO+LxQq13mhCYoOvkix//z4pFGQEg
	cba9MOUUI0qwFoSAYufkCnTxn7ywzR1FwZujrTGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180028d063b-ed9c1b73-eac2-4d20-83b3-fece0383e113-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2014e3062c5869db13cb5e1e96d0edab9b13f24a236f31b6ad518334f2aa0f1
Date: Thu, 7 Apr 2022 05:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649310238
