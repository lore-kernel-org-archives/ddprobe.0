Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E86E62E
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660291853;
	h=To:Subject:From:Message-Id:Date;
	bh=8RLwTbz+9isn2iuchVaeWoHyV/+DlDRsgUNELvPK/rU=;
	b=N4xkb6GgXV99GytqAYT6XQxvI1hCJO2sF7qTViDGf7FpXPfl7Xin17+cMLFpJGC9
	OrZYR/MK+BI1eOIxOYjz/BJYTAsh46VpRR2I09r4pdI3qC7odyjL8p8QgC0zoJNhm+k
	yCCY2CQt6NkS+5z9LAnX5Y8HFBvk4C4is5iraTD0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660291853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8RLwTbz+9isn2iuchVaeWoHyV/+DlDRsgUNELvPK/rU=;
	b=LSv4WtE7UiHcYqEqPut7NleoBktR9/h7Axy1UMY+vueUwbUaw4FYV6jubxIm4pej
	cdqDqZZ9Bt1Wo1Q/bSHudFASmYA49D7f4C7tu1ui5BeaBIF/xkULJWWj6szIwzNMI7E
	6MTBlXhrz3oQONWw5LAZXXaJQAkQKeytdJ8xZcvk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182911b2970-2f9d6137-aa26-4a0e-bb05-aa1a6d79ebaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7e5ec2b4577a95f29950dd6b000fbd3dc876789fad04161739325d9dbf5fa05
Date: Fri, 12 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660291852
