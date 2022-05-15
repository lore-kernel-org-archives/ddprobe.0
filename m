Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CB6623
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 02:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652582339;
	h=To:Subject:From:Message-Id:Date;
	bh=Aqk7+SCWioeY0iImBMwdUsz/Tr9c+CYDT0BRG9C5vIg=;
	b=R+Tgtq6vzVqYfBo+e0PudOIFUG3C8IMdWSoTOLQCjiDxvoWL5HJeW1yj86d+IXPj
	tmq7QC+30vALzfwYjXpotgY7tIkdnyqZjWImTFmSFObeVznf0Y8xNUiaXmX/GTEBLmh
	GVovrMKwiAWHFH32TADiT1z16Lz7I59ijftWh7Tk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652582339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Aqk7+SCWioeY0iImBMwdUsz/Tr9c+CYDT0BRG9C5vIg=;
	b=dhJC9p96EHHabvu0LGRjKGU7pkz6q7cYFs7uUYdGxo/+f/jyF+YgcmeOaGsmLvIi
	WM6ElwdNpz4XWL7vYdtwaZfKyPcrtgYly9VkNofD0SKmtlgufO36OjX1+5rFiTOA1mm
	dUZ2vQj77EjvyZHxe+58V/HS9/wPmpxg9JUWZs0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c59552c9-591741b9-b60e-495d-a61c-f04ea4e16c39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a80086c1b7a3df3067e76a6fd00df9a337a50ff5373073b69553138f45b3afa
Date: Sun, 15 May 2022 02:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652582339
