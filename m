Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41063C15
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659894653;
	h=To:Subject:From:Message-Id:Date;
	bh=Uegqp/X/21zAZ5YV5tFjJ4pBXSFh7xvax3DOp6ijaww=;
	b=YJ2egqLQrivyaEWqe2v0jeTusbMYCDAbjZKL2Fvx8MgjzsSnmE1Z7NJr24FKBNpv
	+pN3wvtQavwcyDN1dplz6wC1d05FBprk4LtOx4d7wKF3VLC66vPG7+uDdlf5+KmhwYK
	9aWo/7SK5+LYKy4iyI/JQn1vYl9ZWNO1qfFVq9qA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659894653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uegqp/X/21zAZ5YV5tFjJ4pBXSFh7xvax3DOp6ijaww=;
	b=ObsgLBRH/oXlVVbhI5ueTXR8C6hKwP9JYwgcLmoBSdtJlpD8nrRB9WcWu+B6UpH/
	JZw76Sbonm8awWXI31lILaa3zK7/DRMcd56Xg3xVuGRRSRocYAuiG9x5AdVZpAlSwu4
	Grw+6Hc78cIIJex5Kojo/oAKooxDc7bGGns3Edpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182796e5e9a-37e80a4e-1c84-47b4-8eff-3ff3fedf5586-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44de0aec7fa24f5d5f5669d8c3c45af8a9c437159c8d6fa1f3e23b5baac432b0
Date: Sun, 7 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659894652
