Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BAD7C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 20:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655151659;
	h=To:Subject:From:Message-Id:Date;
	bh=DT3VZjqKWNjUKElpO7hgQRxcPeV8VvSDU291pj+WBSE=;
	b=ehw+eKZJbNZpwGtsbD+Z9Yenbv+/g74TaxovQs8LNUDQKjlm4r5djZPOzhmCSD9i
	8U3BmlJrQ4j7uzh9iODPZTcekbfzDfuwrjYvbGAzeJ/rPj2Ks1DQtphHKjdKWmvEuIy
	y0rh/Z1vyAwX/0Q6SIRW0pudIfjqBHz/0iO175fw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655151659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DT3VZjqKWNjUKElpO7hgQRxcPeV8VvSDU291pj+WBSE=;
	b=eHPnejPLmXiWrp7T2As+JkX5lot4OHHdyTeh7tpdK/vcq+IRM31uquDzHffYvbkZ
	pqsiSnvxIzm9e3RiI1QK8l9S88CuUmNOY49bWlPUDDfyxp9xOiRtzRS2LsXxRlPaylO
	0xlRqvELA0tYIZEmMJw+4giy6yWBXEDbXmJBkcyk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815eba091c-d00b42ac-1599-44a7-9fa5-2165794f4da3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70b3bf117b5e3a1bcbdb7abb93e35e296e959f3edfda6235eac6fb0cfe76c2b5
Date: Mon, 13 Jun 2022 20:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655151659
