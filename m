Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654EE7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659022852;
	h=To:Subject:From:Message-Id:Date;
	bh=Mu4a+7zIkpMvlOnDDuZ3khWcWIURSTvVjoNcjaw7OGM=;
	b=aUrIvPzASJBOTlrBnltbTykyTg0Ph6vUlHl+u1PiApcnN9KWnd59ZLLu1IwSxkLl
	vkKnwD8ECPk3ldvx1H9gDlJkH2SDHlu/Peyljb7qoh86QkLdOjQ4xwHgrpFf2fBTfk2
	vrtT36z1ODDE2JF1+w6Yv8KkoazGecnkvYq7D/XI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659022852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mu4a+7zIkpMvlOnDDuZ3khWcWIURSTvVjoNcjaw7OGM=;
	b=V88FH7O7jybrPZGWT17WNB0fRoKQgpQGnkeEqrPjaMf8RL88K3INT54sbhVKmed5
	zk+ajY8mXCajIUy5HV5NjMkpZl6vWG7IRyYKtQMeTPsDeT7OJA51lcVRLe9psAGsykT
	28cSJ2iVazr/eWi8jW/AkzGs++HeEkeeu0GOjNYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824577c1f2-fde6fba8-d637-4756-8f2e-bc852d2e0296-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b309651712354839be62c2a94ee4272a6b03aab0154492460c6dddd3218e1e9b
Date: Thu, 28 Jul 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659022852
