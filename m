Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AAE7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 17:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655573099;
	h=To:Subject:From:Message-Id:Date;
	bh=+AakfqRnmJ0CVrCKWJp/+umK3Dgv5URt+Dd2rOjAsfI=;
	b=TWZjiO6mVN36aKxLhrZaP+L/3xwFF2nJBxayZ1tLN2OSYVY7SJfPPeAe+y0xYm3k
	2WL+l0UktSHJJfQXmEOvxUhRg392Lvumucb/qnKvAS7rxQK0pbaPXeksLb0Fzn8H4bc
	aEkt3JNbS0ZqqtSPEqH2C/lL1BxxvAUwWCJbcN04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655573099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+AakfqRnmJ0CVrCKWJp/+umK3Dgv5URt+Dd2rOjAsfI=;
	b=iBwFQnnEuBGQG/9PzCAn6Mcm8PHrhzn33qqn2PQbQAaI+sgjhrCRJg6cZqt83HwK
	CDWUAIertk5Udf+sVCE6xRXFRlK/FWgROxvp9U06yblsQWn18GQJNyynLXxyUnuQlp0
	u2fwvrdaoLGWuwAqW/sTxdJokQQu9fo7JAjleg4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177d8b320-a7536b97-a25a-411c-971b-aac17eff49fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c52443d0194ce24737e0762e0afac0df9e9505dece6b95244933f3afd0a24b6f
Date: Sat, 18 Jun 2022 17:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655573099
