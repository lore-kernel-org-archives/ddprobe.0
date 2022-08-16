Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706876AAE
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660678852;
	h=To:Subject:From:Message-Id:Date;
	bh=qrgTdDResfCk6MPX45uwCIPq8xpeLQskk4L3qT+coPY=;
	b=h2cw58UDJYYo+eu9P3iQvvm+UDnJSEItnqXkMoLVL8KeZuUtAZ9wqDlOV0ZT1EM9
	ZrwnjqaR8bc3Fq/8MMQ2wUr0JXf+9N5l44MI7kLyI3SjDsiFKi4y6vcHGpN1CXy+scR
	XiAnh46uZ0zs4D2qS0rAtWx5gOZX1WfKED1OhTy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660678852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qrgTdDResfCk6MPX45uwCIPq8xpeLQskk4L3qT+coPY=;
	b=k9Sjb5oLGiEFF8l71Q1lDm88T5YPZhYuDhBJEg34xnJoDKtYxsfqgZnACQC09/XI
	OrK8e9yf97BjM2ZaTZizVehCkSiMXhoqIKB3x7ujVuNw96/IIvpV9VR1P9wzK2tjTcH
	Yt2dw5SD73DpBjAa8jGrWmvd9yTBqd5JzqJ5l/EE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a82c4fb1-505f8c5b-16b1-4752-b3a5-9b2a9582f569-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 514aadb1d9932d08265d7928fff8ad7e9d8a5fcba29ad1be059ec65123070f95
Date: Tue, 16 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660678852
