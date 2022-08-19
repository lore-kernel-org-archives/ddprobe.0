Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB577B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660879852;
	h=To:Subject:From:Message-Id:Date;
	bh=sntejDMtVzGJ/n1i40x81qxPQiadxsFen5hkKbPk3zQ=;
	b=Bnj+I+0AjkNeDyLxGYSOaRQL8k8SpFXt4CF2yaveAV3gZhAW/KtTvyglID0OB3Gm
	ik0jJdLyhrVZjVUZt6jW4T8Km9GwEpyDpqwKmVfw/0RaBr4SCzkGrRCMxGywoAAZRYe
	8sBuQA9z85i42cpmB0MgvHXgMp3HSuoI0gAYX4rw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660879852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sntejDMtVzGJ/n1i40x81qxPQiadxsFen5hkKbPk3zQ=;
	b=Uf36u0l0n4YYEGpBSOGfUhLqWT1er89e0khxq1yD3Dn4fqtvxj9m0HK0fsgVXneV
	YIO+gy18ARQ/5NHWzZcjU7Qz1ssKbYqOOH5N4dIIYzUwEFhBdJ8N9Hy6J6acbZkCCdD
	cXSpsllvqL6ctXCVrb43qusukG3G5kCNMmiJ0eEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4275433-f8a5633c-a516-47fc-9591-42e23941d117-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26827b24bcd028bf378bbdda825a6a6a6a74fcde817b1f10de3ace45923996de
Date: Fri, 19 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660879852
