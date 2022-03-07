Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED927C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646684185;
	h=To:Subject:From:Message-Id:Date;
	bh=7xTaaaI4F1/ycdzWKm4LVxKZmW+ODB+upZWdOoUmRyU=;
	b=fcpxHb4huRzVrQhCySdFzz1PysVuS1incOWBfifcMxKDTRQQBo6878/Oebz+ADuw
	5RvdzywjmAhyus0UmBqWB28xZvVsC8ss90N0zvfYY+B6gg5dJCFk5EctYv509AW+dPB
	shQIK7Xwe6gXnlro/NBoBMB71tTAQq/epAVsGZ4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646684185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7xTaaaI4F1/ycdzWKm4LVxKZmW+ODB+upZWdOoUmRyU=;
	b=Km6hThtFRJHaIYmUI9rUZpb+C5WIc06XRtxyv7ksbCXil4q4WCZALvXCw3RKOZ4v
	pTTteuJp4ikzQEGplH8e0guL0XutTylRR4KbvG8b8jt3Ajj2N0yBXMXh6G2NmhkuWeB
	Z8hoqw2U6hrfAgzxxvdcVbHsuJloSMYgWy+ytDls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6606a0cc-9ebba1ac-9f1d-4203-9d39-ae6123c46cfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a97700e4173330cec9d0a390b3c096925c514c53a5239812e81e66ad9d04889b
Date: Mon, 7 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646684184
