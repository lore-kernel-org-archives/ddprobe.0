Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15847C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 17:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655053859;
	h=To:Subject:From:Message-Id:Date;
	bh=IRAc+OIDJZ34ASoRXJFy7FVdGNfky2nCTUtqqurDo4c=;
	b=Q7mjnp+aVi+KdooOWzLwwPxrgo56zwfYHtSPBDjD8Q7gsmUVgdbkUmX1ZUUzjqhP
	878bRjUmVirMm0757+2+TqHO31JYgOU59cRYV+U9SOBrMeWNowVDWr/FauIasBzaSP1
	F4mTUJgmvIWX8jvUx3//0+2bPGNU2BJgF+fTGI1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655053859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IRAc+OIDJZ34ASoRXJFy7FVdGNfky2nCTUtqqurDo4c=;
	b=O50d62/6ub12TwiSMtQIuHBlc+luL2v0I6drUOsVtfpMFwHO7egcYPiMvcvmqTtN
	EsTNHjVxq9ISZBJ1ciO884Av4IqhYAPBJgBWLijm2YBJ0hUZEBfV04nYo+iQx6+4A8P
	RRv9lWIddE199PpWUDgfMJJtr11w8kqXWZYPj7Z4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018158e5b9fd-1ce56f81-acf8-43f6-9c72-f0d084a6eca4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8343e4780e6bb7235d51eb91788c623e3f6cd4f630f12fded44ca6256d357ce
Date: Sun, 12 Jun 2022 17:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655053859
