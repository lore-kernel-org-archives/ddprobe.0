Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92720E0
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 01:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652406779;
	h=To:Subject:From:Message-Id:Date;
	bh=Rtten/od2iaMub6irlGtugau9+UKS+vd7/2FOZuK8lU=;
	b=c/8ShLfEZSYCsAqyeRF8e1CulaXxPnukBvCogJmM3jQflCWT/UomgGjnW1v9M5/V
	RYmOuEBauzvTAJxKX021ulr0s2tiAhgvCySJo39jkXAsuEADhBTNRSSsN3PQ7Ta2mPc
	Ie1mMqS0q2RHRFZprpi2Pr2Seh5QXgRwCUmZjGCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652406779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rtten/od2iaMub6irlGtugau9+UKS+vd7/2FOZuK8lU=;
	b=FCnoBY0JeyXH2EpmcZszvA2AUFW6OSb5mmpuSO9AcRlmKpKs5BT47fzSJLN45iBY
	PqprXU2FpTAldEv1Zm3c9yn4G/E0EPOKOvgmIuWnuitmMjP5Fhu4xNlbO5Z5J1EewXo
	S9+pVVbXWCBXic/Yfd1erJAIHbulIH6Rdic/lcw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bb1e7d61-7ba87484-cbed-498f-84d0-d6d1acae18e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87256a0d313d28197aa37c5842a266a215738ccd80a3ebc08fd2ff801ed0e348
Date: Fri, 13 May 2022 01:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652406779
