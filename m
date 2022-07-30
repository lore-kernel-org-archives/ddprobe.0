Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572A91FA5
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659177052;
	h=To:Subject:From:Message-Id:Date;
	bh=yGGGw8fJ1Z8Nm8ZxfW3u77QAhL+rWASMS8u2azQuOBY=;
	b=kCO7YOIQ1uNPCymckc1VI8AZydU1pzYvs+7nGfmQOzS//et8gBAHUZbeDxS4bL9l
	mb/hkBNPeG2dsS7TKTo0gS1KwpkT30hNOGm1Afposcc2U8+zZTISPlIhILh8iHZD7tO
	qtn42DC5iLzk2CX+4kP7UpI/H1Id3cnhNp24G6Ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659177052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yGGGw8fJ1Z8Nm8ZxfW3u77QAhL+rWASMS8u2azQuOBY=;
	b=RAkALwbeONVW2g9AIC58X3L/tXDT7vrPWvygRJoBBmI8xdMyg/BC4CTEARzAXl3l
	u28Lin3E6rHyqATzrHIncZjQCzrfCoXUEvWiflF0Fqx20ZQjtrLwuCAXybjs2THvI8t
	7VRXo0rFyb1VWEeZn7y6Xe7XfhPIvrPeCehTr054=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ea8a969-78910653-3c28-4a9f-a146-77a7501cc79b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82400bfabd3e983f531ef83426e86c10857f6f2d2cb55c7ccfa0db56d93aa31e
Date: Sat, 30 Jul 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659177052
