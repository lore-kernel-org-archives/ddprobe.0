Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86FA17C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659697252;
	h=To:Subject:From:Message-Id:Date;
	bh=sfdf79C7Ia+zif1jEK7OglznF/hmctBJ2D7TkBbMAUs=;
	b=RBs9XmZLIQLiY/gh+zxa13hsUFrTF4Qyn3a7XDL8NCiEMAK6NL77FcFyEKz/Ec4/
	ClqcCsYIqeVJcwpM71fvtvdz7STbmr2CU6l4IDSnj+qXqzRiRLddBau5m9j4OexXY+F
	q3ej94e/IFGvzFOl88apfwgS+EK7TNDpUWOjf5Xk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659697252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sfdf79C7Ia+zif1jEK7OglznF/hmctBJ2D7TkBbMAUs=;
	b=d+zf9/1kny7VxyB6RnWHiITmq8dMOXAUaZVfp5cCm0EIVJlvgAC/vaHqjV2ovcLK
	H/MVqAYKThz0AU8tZV5sWlAtAiTU+kOWJYTYLd+518bcOgdmsBiPrmG/WhcbUXORJOP
	SWFPRYHkTDqPOB6i6yz2LdgafDiuS7l87pOdvKSg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826daa48bb-80186714-c653-446a-8dda-d67a1ee32c73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6262801604087b780de3264aed68dce73e4264b92a333a2aab2b5f4bdcf1ab1b
Date: Fri, 5 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659697252
