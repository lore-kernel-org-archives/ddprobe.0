Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C22D4683
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647389784;
	h=To:Subject:From:Message-Id:Date;
	bh=9lDYO53rvkdcQC5vmkqoEaSt7v21yZHDuAmAPHI++xc=;
	b=F3BtwKdqNrSOVkrnLSFUdU2sSQrNcTC4zqCyBjPfftiihXX+Pq2pffUPHAhmpUIi
	+2byFFtOk5CtK5gNYeSAnAvfSrYE5pr1r75q50oAV5etoT4GpcUcyliFOJS7yidPj/h
	HGNzOWvsyKxvaSEQrdTP0t2570OCP3Lf+qh+GGVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647389784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9lDYO53rvkdcQC5vmkqoEaSt7v21yZHDuAmAPHI++xc=;
	b=YfPPOnQhtqUaPiQKV2ZCJ5izyKhhmMaNbx3QNXHOvL+zj9p1HQP7m8YmXPQ06qqr
	ycvrFXXf8HPUbAXX52usNQQ6dPnZPFzjv4F0oXhlZ4PImL4sCU8aho4X3i6ydfIIU35
	qQFyd8t5YIc1LymXrhfotHKNBr42QawlokKaK6eA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90153aae-b47abd4a-ea43-43c6-b1ba-203aa1dee5fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b3d1a12f0826f234d6f9ce3e3b507c3836c68d478b41b83da2621400f4899e6
Date: Wed, 16 Mar 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647389784
