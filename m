Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9BB7A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656170212;
	h=To:Subject:From:Message-Id:Date;
	bh=nQE7rsCgX64Dvy9AvOSESc9V7heGndicOtE4EaMtCYY=;
	b=CsJgPzkHiYkmzFEUIVUdU243q5ba392IQN3bimsLKF6s6LBMNkoTgr0MXYvfaTRC
	S26vcHJfKsyYamnCHfdKiakWWbipWFW/10GqBrxOowcyZnv0+E/bg6rhjX8Kj9TtBKD
	DLquJC5P9Piz7DJO+VAwZazW4u83OURObaej0TY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656170212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nQE7rsCgX64Dvy9AvOSESc9V7heGndicOtE4EaMtCYY=;
	b=A9dP/Y3jxsACJazEG3MC7M9jwQjfdjz/yXaAgAblqw3NDEMqxJWAx0ZaXkQ2oPKO
	uWFAvQkkSvdxKc+n0xOEbFWr80J03HdFvFeVBliZ+R8dXorDrq/fYoGKkxaLo+F7wzi
	l6kOKTBmjZwXN+FD5Sp4whjZFaEN1jyl6wnylB9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b6fec03-85d09aaf-ce29-412d-861d-4aac11a6742c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a6530cb7fb85d91603858eaf170663b234822b410570a08844d16dbf92940e8
Date: Sat, 25 Jun 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656170212
