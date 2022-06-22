Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C62110A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 06:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655880779;
	h=To:Subject:From:Message-Id:Date;
	bh=wMNFdjZrurzU+F4Da8iVXjJbZLnOnKZ5YHQpFx0TCfg=;
	b=HPf/KO1c1rQcKbwwWuSTD9NzXIqw/J/ajpBYoQtNNWO8+moKZsWJCcduHeIlNQSs
	829D2OoiP8z/YB6IJGYeirqioutZHnqh61OH3gzvnSbPCIXVNMbKWczjA1Do2PJhsa4
	PZp0Ym/S65Thv3YxJOYPgvS71RfOtgkfnmpD4OQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655880779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wMNFdjZrurzU+F4Da8iVXjJbZLnOnKZ5YHQpFx0TCfg=;
	b=YE4Jp+Uw5PD1fP/j+wDhcEpNvAuHSG/4WfnsZT8Adie/n92m660RZ3z7wKmzkxJX
	bQQMwAQwckIJ+i8IbAeIL/dlKeAwKbheLW08zHo/rSrooz7qMQg2VNRl2PvSEyx1N/V
	fKWcYskAO2RXlW0uCpCACm1fGxOpUJr1M7wR9hek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818a2f8612-f2560946-d40d-446f-9be6-a5fc0e0f4d0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ed9a89f21d41f5445014ad0e7667df0e5691c52eb2c4da57eaa69999f4d2bc8
Date: Wed, 22 Jun 2022 06:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655880779
