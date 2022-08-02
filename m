Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E11D7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659435652;
	h=To:Subject:From:Message-Id:Date;
	bh=vnO8Fvae6QgEK0YDc5ps/z1Fr6c23WqtSqTvmEErvGI=;
	b=bQbUuJunvkEFYO9r/tA9u5XImuoBbWtHdV+r7KuObPgkzdZs6qOfnXAusPDTdNzG
	rsZsuR/YGNzONCbKvHAXn6v0jMKE2cfVPehNW6WLT886U6WOCXtH54Rz4imvKuZzjBf
	6uuOmYXzwLQ8Ot5ebrLMXa/a38yWlxEJFH+oBb/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659435652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vnO8Fvae6QgEK0YDc5ps/z1Fr6c23WqtSqTvmEErvGI=;
	b=O1Q9tjW+lI/dA1dhx8t04qeJ418kboWltuUc33k3xtptwhojKO2DNNg6s62iTc+h
	+wientLfWTv138IYdfVvoAMugabwiqyiM94HBicUvOZ/b1JQrU8zgBeYif+o8ds0+xh
	o3bWW0j7/3RR88mX9/PABmqzRCmOH8sYXumajUnc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e1295d2-3ae442dd-74a7-4e12-ac46-7affed364d7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0af7d2ae36c8d5d7a8ec83da4e114ce144daa0028f31f0838dbac70454932fb
Date: Tue, 2 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659435652
