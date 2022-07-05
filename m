Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2AF7C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657033012;
	h=To:Subject:From:Message-Id:Date;
	bh=Ov7UNdxdNsZXGk8SbB9ZK2EN0Bb5ZiQLYRoKWxEl348=;
	b=BsVgBFAUjMEIJZxdwV6f7aVGXMvYQ6rrruxavQLkDbehgjt1mOH1CsRqtvUxHGs1
	wWdP7XIfh1O+M8WlPLWaavELqwG1YhBGdSOFq5GcjjNZygijEfzIpZUYRg+ePUs0qdt
	AMfnFRp1uK94lp/igYJkXDtOVYWs27hQrWDc+XbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657033012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ov7UNdxdNsZXGk8SbB9ZK2EN0Bb5ZiQLYRoKWxEl348=;
	b=QwXLhpaqBhIpwxLJUj9T5uKG4LeD4lPJqOtd8Io/XK+fQwG3SVhMrWNJI7+pNLSm
	fGkwEJH561xPUP8Xyqo8/jbJpPDUAsQfOrbZifGze4CgACf08faDm+Y7b5RkVfBnLy0
	sKI5ttRTdE4d6ye7wZYGs6OaXaeOrbIhHi4qM1ig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cedd3439-016a4d48-2966-4a5b-b3ab-0d632aa1d64d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e8f81d9a66cdaf2845c772453c53154949158f9ba71c6ca6446f27a52a94e56
Date: Tue, 5 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657033012
