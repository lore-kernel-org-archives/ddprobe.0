Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726607A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647373284;
	h=To:Subject:From:Message-Id:Date;
	bh=9eofEHddmriVd2TS3xrCZU5FjA5x0FF6iJWO17S6K7I=;
	b=ZIGP8tYtz3xMaeDCn0Q7FAjd4EzwLBjzD+w3pT5sGUdxRHkdG8AEPY+yr3F9y57k
	0tXHFXlYE6KazVDp4WQwjJ+okCoYJVLttkKtK9VcyKIFOVW3w/0WuJMSU/0Q4ZtfhSf
	fNd/2l0swl4g4WTfuTw8Vs59oxY1ymmBK0b4zgYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647373284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9eofEHddmriVd2TS3xrCZU5FjA5x0FF6iJWO17S6K7I=;
	b=REq0KLQrt9Mrlxln1YV5iSqF8dh55mp44oAlxIjDzk7A8tEvvkaBKi2BYq2eHYJZ
	qQ3oHWoMK/2eeI2nAQ1qSUuSAUDwJjf3R3i3D/N5zCpyBoRL2yF6uf0FoVdJjEGKVBW
	nps7ghZ+JfXJUgGaoA5W3TG5vAd+KAGDlJR7cLws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f1975cf-72260d63-d9e9-44c9-aafe-ca5df4aff917-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd8f367eebbcf0fd39a44c1dce9d17428400d1224d2a503a41a4022e0ef225a9
Date: Tue, 15 Mar 2022 19:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647373284
