Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0ACD2901
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 14:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650637858;
	h=To:Subject:From:Message-Id:Date;
	bh=AgfVsw09qJ+ZXmKsDmBPG48KDl3GzP4cr8/++4+te3Q=;
	b=Ug0agE7CFjBK4FDp+Rp5645c/GKltjKIcLi69PkTijC/Q3WD8JGq/s5XUMH1J7CN
	vIBb1HCeQgaZV7rzklanw20QLUPcIS+4gZPv+P4+IOpN9rQ9cTL+OM84Le0G8lp/Pyf
	3msoC5svlS6SRvYOqL98Bpb30Mn6/lU8hbSlcPm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650637858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AgfVsw09qJ+ZXmKsDmBPG48KDl3GzP4cr8/++4+te3Q=;
	b=M9yFMN1Wu9BN/8gUCVryaUAKuKCbe9K4htdBp8z8J8iUj4CnutK5nsVjRgRbd1Bz
	qKYpWAFuD0VD7x7QGnIzOxa5I093UWCEW1WJhrVchkicOq3KDqyswfZWmlIu6IhOC6c
	RlGlIIFvXocpiMYUcx72X1FcrcfuPrKqgZf+N0wo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018051aee5df-f8d5d17f-97f8-4a68-8ecb-3169668f3c21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06b58f9c94b563dd439b2f8ab4f99c6ed50edbbd69056ca75011bd7974338be3
Date: Fri, 22 Apr 2022 14:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650637858
