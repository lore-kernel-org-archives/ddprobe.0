Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8358528FA
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 16:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653840119;
	h=To:Subject:From:Message-Id:Date;
	bh=u/4CyZBvHoIirzNBaAzoSeYQyJPOst1k01aOF+Gwoh4=;
	b=JrI5p4tVH+QD6WmoTUUOIqKzhJaoQ9yijYeT7xG9BxTZ2vnL8sfDVDy7WzIbLnFg
	OCnAfk/vsEnqhS8shQblXAL82CoZbzuulck6IrRLo1T4naFMtlbHS4CcjVjIueJNHw8
	ndrxPKo0w5JMYQIzNzfWIybEjTbEluvCc+WUHfuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653840119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u/4CyZBvHoIirzNBaAzoSeYQyJPOst1k01aOF+Gwoh4=;
	b=C21wc45QOt7UapaRSASovYtfCMpvLHjPeFTeWpWzOvogz8WmBu9FUBM9XtfJRvr/
	ourweDf9Y05Hcf7FWTagFnU8qlF6try9hpWOFv9U3ZZPjJnexSHv11lHSTj7osX/q66
	DPM9C0yMGJcaMdzqEQ0+mW8kTaKyo+REJ3LEM+Ko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181108d85cc-cc1f8a7b-0f9a-4169-a3d1-9b65db3c68e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad657f7338e517de6c5ec0edd8491ad8addbce9d53a9baf18c443a765265f93c
Date: Sun, 29 May 2022 16:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653840119
