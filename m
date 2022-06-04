Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D742110C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 06:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654325639;
	h=To:Subject:From:Message-Id:Date;
	bh=tGuJGueXWO5GlJYZhGJyxiBadd4bIWCsV3Vv/923Gcc=;
	b=ldRxvxBl7lqV8AzT4i6Qw7Py9oXOFHjYLWbK14vI7YBc0Mc4JkwJoyQNXC3KmoZi
	K1bklLqvuDpA4kmmM2ZcrCUIRtkBJFjfV+UKdgTBVW3t2YFSoWoAfjulBVjs211GZRz
	cXJHKoj/0nx68LqlBgKX6n6OPJ9UDfMnE3+CiFDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654325639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tGuJGueXWO5GlJYZhGJyxiBadd4bIWCsV3Vv/923Gcc=;
	b=H3JNEIYgbGNboIhFfLv4NlBd6m5apolSS37gzBwd2avjtu2y7WOV+gBOKdiXCM0c
	yDQDiA4HWqLXT/LZu3fxmO0X6jWT07LxqIUwJZMmqATkcxdu/Klpq6cR0HLFFJDoUQk
	SWyAxTmdFQnLyKqFWUVFk/EYZ+RpgpLQmC8Ubhx8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812d7df839-ea69d9cf-b4cb-4046-8fd5-758005ed953e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69b57755d155ded9edff7bf977592fb4d40e5a0f34fd26dd7fb5a37f53cde4ea
Date: Sat, 4 Jun 2022 06:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654325639
