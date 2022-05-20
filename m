Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE8C15A9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 05:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653025259;
	h=To:Subject:From:Message-Id:Date;
	bh=RQBXk+fKyp1NgKmoeeBB7p+8c3FzVG6bGWyh5sbAT/I=;
	b=dCHNvO1RnHnqrJS9EhipgaKO/SfRoFzs3vzF3Xwrb3IxKUZMgMBAbdMP8sEGM9tW
	91efOnWlkTxp6u2gUtkCjsFcCzFKqb9S6OBwnGrX8/NwUTTSF7O7M+ftRk/Gn21PxFj
	dnFMnHJ9JD3+Xf4TjqT7CbUtrR+RfJ6v9RB/qjr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653025259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RQBXk+fKyp1NgKmoeeBB7p+8c3FzVG6bGWyh5sbAT/I=;
	b=fcZ6EzXk3zlHhntrV5kEIE8PT7wdOaE7V4ibADIvwM8SvQE8P3ktQDF6AFxnARwQ
	X4tCbSAL0jjxt40ec7gRpChs7/Eg7PbSLV8VD2WTs0PjlE1OHy+HbRgr3ZpeBuhaw/N
	JsGTKsbFlrM6VJ+DviwiIGBo03v2neNT8yYnpCDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dffbbf6b-65218d50-f1c0-468e-9056-d6e5da945f08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed88c402c37f04069d2805305f6af197cce416e1806a3cfef03342e7d77719cb
Date: Fri, 20 May 2022 05:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653025259
