Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BC517F3
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657862812;
	h=To:Subject:From:Message-Id:Date;
	bh=ck0aIGbYKFZbWXnkO/Ski6bGyge95d0DmsLh+4LCLJI=;
	b=ZTirqUzSW+RY1Jy1SbVPVUvBhPB1xz/Pyfa//PCC+8DVvcVUVAZLysfzlXHVQ3ED
	QqpKh71PgNdPMmCQ/V6TnYbb5YF5cAQfKHzboPmgFhrMAQXb0R9B1PjS0k4GDzVUnEz
	ETJAGyiwV50oqwtUtWgeKTOZmtvvlG8NkiuWxUSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657862812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ck0aIGbYKFZbWXnkO/Ski6bGyge95d0DmsLh+4LCLJI=;
	b=cFEnQ2ywWYfCd5NQXSyQbJm29sEmLQ9wV5d5EWxe75CqajcEc01e+Tu+ykjSG7z7
	r7qFQMkhefK0yWnZZCEe3dx88C78U7nsN6Cz7ro1M0h5xHE+aTg8ICU368W7bzpKXoM
	8sqXrzs8Gu3lMM0TR3WC0ugdWvAw/c/1nxPsbIrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820052f2eb-77d70d8c-bae2-43c6-8ee0-29441a931166-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bb8994ce357fa3be74ed264372dc25a887f7ecfcfd1f13bb6c91ea1d9a99e19
Date: Fri, 15 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657862812
