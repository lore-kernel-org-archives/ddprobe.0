Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567CB7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659968452;
	h=To:Subject:From:Message-Id:Date;
	bh=Y448M3Zo04nv/M0sGYbw6P2T+moAcoBNPoQYHUcCxBA=;
	b=fLTUEYfpsw/VRD8+siiTboEkhhG6z8d+HXvO5A6s/S5tI3ikwuXcdWbjDdfQv09c
	kGqGNKE8WYo41LsJR39Z5hllWM5f2fIfBK5eH3ym7QfDIcVvk3XD+0UkbfQbrspKDyg
	j2S4iwXPar92i4BV9x17Y4nMZDzrzpU0ZgPW66+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659968452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y448M3Zo04nv/M0sGYbw6P2T+moAcoBNPoQYHUcCxBA=;
	b=ScY35ToM6qmdlyr98hlSgC0r11HTXC7eiGwkmmTAnlD2jQFehDPzGmnIS+SUpc77
	Ya4tSAdFJcxamDSKCweHjhE8Qetcktrnoppl45tUdrPlrmwWnAIu8JqEVaUoLQjYiof
	I1tne/ed2BC+VajL6yCkxJdSh61SeGgj8HHoTuzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827dd477d0-ae3b6d34-8a03-4cbc-8eb2-dc2461896020-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 425bcc5c70a5a59960190ab13436e087164005092a4e046b42475996b40f6684
Date: Mon, 8 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659968452
