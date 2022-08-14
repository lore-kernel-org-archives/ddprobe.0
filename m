Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90739EC5
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660474853;
	h=To:Subject:From:Message-Id:Date;
	bh=4ujoCncRzaF6so63hMjK0MSpA5+dUJdp4TY0acWQPkU=;
	b=FG6fa2JSsS1rLHR7aDiqdoKHpu2QQsU5rT+lQ6/jBe1vvuTRmM1yJTRqDcNW8MCJ
	en0qb3YB0eMWQHrjXp/BBVlMeERUMxyqS6Yr9aITOabpPdU1G+gam6++ULB+xRX4syK
	M/On3RA6C4usTEDULGVsCS/vjCzSF6kvPM+Y/ZNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660474853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ujoCncRzaF6so63hMjK0MSpA5+dUJdp4TY0acWQPkU=;
	b=W+AJVsgCUpA0ZAZ9EiwfFFSwyukQluNv/F4BypP29xJN7sUqj/pkepTxSgHqIE0V
	4H+jjNtPCQ+NyEyk2S5HuRr0hUG/VgjCZOuf1Qp3eaxffF4yFU1CXJr3jBg/4HA8kuu
	u5C7+kiUs4npv2EBVPL+DMqVgjgXYq3aocTNi3ek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829c0384cc-15e68357-15f8-4dc7-b358-888ef2634a2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b5ba63ef29f1bae9b379012e936baaccbe996390cd1540bcff1611b3b1efff0
Date: Sun, 14 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660474852
