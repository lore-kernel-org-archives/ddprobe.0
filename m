Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3932F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647492685;
	h=To:Subject:From:Message-Id:Date;
	bh=UgOplX1rpbCtTECKdu/nwR0mXdyAwK0k9/gj0PWEems=;
	b=KWOwVt0PeBvwIsiG4DRcDy+e8gMA3Ffsl9EL5Jv3/GXo/w1C6bjPoIXKIUXTi5iT
	q38tv9uRB+rGP5h209qM1O2tIZSit5qlzF4FJP2YTrpepn5ShBuvYY3OBUNYGdOso8G
	XMYim15yMqRpHMNQqEc2ls6zernv7hETh4rC3KAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647492685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UgOplX1rpbCtTECKdu/nwR0mXdyAwK0k9/gj0PWEems=;
	b=QHL96dcuZ6rbeSBfFp+0kiCHwSMx3mRZzrp46PknZuGIWdUugezVhrsMHTGLLQZ1
	Rwr7To9ddUuRS5WSEJSXwT1f1t7mQcyWhNZLmG7WqZFieXhcBUPdNj92WxL7SsrCwiP
	xKwCyp7UFsb7651sNfc57yH6br/ylMvu8zi3ko0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96375bc0-7dce01a8-b10a-4382-bad9-f0b12ee88c7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f47945576b359fd6f904fa227b59eae90f45ac94fcd22d612ff18a5e505972b9
Date: Thu, 17 Mar 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647492684
