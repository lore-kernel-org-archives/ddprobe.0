Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BF31FB1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659148253;
	h=To:Subject:From:Message-Id:Date;
	bh=R7y8Sp3ZQV5sVxbUWHmnQ0WNXgqgbZBk5C/6RfJ4LTU=;
	b=LwmFcTejyajBd2aA9A0zGr+7wDlnqNy+zgxxKZt8BFuT4GbgQZQzmYBMpo3/nfvE
	Ipj7LsWD6Y0Iq3r5m4tc28MS7wJXgY3viSLLOpS5D27gwSnCn4FKzWuj/Nq8yncvMUW
	PegSt1j1f9Cd/71pRGE5TFGPo4XYRvsmvLq0k9R8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659148253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7y8Sp3ZQV5sVxbUWHmnQ0WNXgqgbZBk5C/6RfJ4LTU=;
	b=cq+k9O7L7jLInCpQDD404z1SLHxg15e+KCBMydiVDLTuRNo+0vC3N4a6Jgbob9/d
	KiAOwRumYyVNSughM/tZAo22sVvAGDmeDmtmu57ETu1FnVn8sZRMMcyiNcXyX67Ukj+
	w6FsKVYCHSyHPubZvMmIrzLXTZXoQI7AB/v5FzJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824cf135b3-e48a5c79-69f4-4fa0-9c51-ecd0cfff1d40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aab1fbdff25a9ea45dc28e164505eb772f165e28ecc227c01d9d554a7a0caa3c
Date: Sat, 30 Jul 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659148252
