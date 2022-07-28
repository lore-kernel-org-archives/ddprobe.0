Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C488EC6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658970052;
	h=To:Subject:From:Message-Id:Date;
	bh=Yaz4P18IOoID9Zy5v1dHwLmbT6aKqDaLCalgG3Zlcow=;
	b=Vx0qNCbihQZfqc4L1MQiF9U4vqyK9hVGVcJsjjkAbr9WkTuZZGXE+uc/VCBX6jRH
	/MyEjWlwWj8RR0LV7PUe2dHJYKF5OVxi+0XRTfCoAeo4yV0J90Eve247Cb8LhhdKFPK
	2UE/LRglZSSWz0HJpIqyDxdg4gWyj3W68/Qc0pUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658970052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yaz4P18IOoID9Zy5v1dHwLmbT6aKqDaLCalgG3Zlcow=;
	b=Y86r3xnV9ywcJZ4KZKBnhkEgqIe5MvutogMKmAvRBeOBHXfEys7VhjqYwxQ2LflG
	1fIzts8cC8mv58CLP+viAQ8J8jfWW7KCh1FnnBK7jL0tLetzMEspgt6RfxDB6PzSx3S
	gxGIChVim56rPo+vYQP07XwbQBqqVYeUkT/U3Mfs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182425217ef-88f23404-9619-4375-b9e9-b85f03ed3065-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82301bdc021bc1ff5e5f3221b7fc626bde080b3bbd6698173b5be6f51d0f8196
Date: Thu, 28 Jul 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658970052
