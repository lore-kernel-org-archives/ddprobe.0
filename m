Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644E633C1
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657623412;
	h=To:Subject:From:Message-Id:Date;
	bh=DUL7A6SwFzywU0afbFgVvrNWMrH5z/FUUS0hsLQ7rwo=;
	b=cjWOE6oDjz1eDDRlIReqnVvmwagy+KBJPVZK49f64vbK482vLiNhwSzMNz/Q50ma
	4d8LnuE2jotx5HSXHtlWqy30G049xPF0OGOIbrJUffvdgRc9VMBBi92jLufKvVpVxGN
	hUpFsh4CLql9EdyfGJv8q5Nzav1MHq2g04rNw4sQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657623412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DUL7A6SwFzywU0afbFgVvrNWMrH5z/FUUS0hsLQ7rwo=;
	b=KJaEN9Vks8bxnm3If1BM4zElfJYUyAvW1VmJ1q6tm42dLfSCvT6o18uZ02QymcKD
	aiTVi1/T2sLvTgdX+NKIsLUMTPYC3HnxfwYZI0m1Zam6y0fm+LEgnMzG2pwH+eGqhlJ
	e3FQh1PWtKwu99sKNawlHkIJevu557UUc6j/iMpE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f20dff37-3991765c-c57c-4360-99a1-3706bd8394bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e01d7a63a681d44ff9c72e89bbecd70e1c530add3bea605ccd36c6e8565a843a
Date: Tue, 12 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657623412
