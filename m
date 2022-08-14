Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FBE2573
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660500052;
	h=To:Subject:From:Message-Id:Date;
	bh=3YzEQCTFgitH7r3+NThw71b8fWjWzCRDkGhAtCNaoWk=;
	b=QWHneEqPF2Ffb+19CFtew2UP36j/biQP3I+QT1VkcmC/HR85kcdLaO9FXqM1KCMN
	xubE6kJrLj6gVLJhgR2CGosxWk/+B4oiI8YWP9bZd1RQEtkeToPbcfPvxvIXiPtEcEU
	xBbcb4cOR6+pz6QX1q6CoWaG9cDWi+ITe9bSH5/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660500052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3YzEQCTFgitH7r3+NThw71b8fWjWzCRDkGhAtCNaoWk=;
	b=W+Vjx+LXvJEGR9rA7HikgEt9ZIwsRr64swEAJPSeSC+lS+e2BH/CnPpN1UGH4z/z
	ob9E1O0KFbSzpUGTeNIYo4QxuytfCd+QdW87q3Kg6WP80FU3+eJyN8b1iiJTUPnqP/i
	aspJAfmOUi+olqUtIoXhA6VqsmYXlXRB4WFSpizg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d840a37-945459a5-fc41-400a-bd7e-a2c492b53e20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d4b22cefa728dfc086b549960d28eb7927e942bdb91c025ce7e8a8b8c58f5a3
Date: Sun, 14 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660500052
