Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7655C20E4
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659544852;
	h=To:Subject:From:Message-Id:Date;
	bh=8ix2sGGUusx5CO1KUZ/1199mkKl5MghSYUmXx20OqDo=;
	b=KKBTVeQRYd1x7C/7XTadYCp5IIdFeIjzBYcFe/Oxb2h6NsxiVYm2fwTE9uoRQM79
	7zLZ1ErnnUxqh2piQOBa4fDE8TWTa6YeesGO4+CaUWEEB4NO1bKsfG2f1HvQGkbKTSl
	7LJhhBsEpOrfJq6Sh2VcrY7CBxF04L2JGRIuwEk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659544852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ix2sGGUusx5CO1KUZ/1199mkKl5MghSYUmXx20OqDo=;
	b=f5hcOj/UCpeEvvtm2g2ILHp0d2POSS141lFRCniFEfTu7j42IznJRy6b2DsgybsW
	KTcxUBFB02Sw678k/5ZQSdpgUqsY4qI//tnbKJFrVLCnB4LsqEn2CKylXmHmx8k2fPq
	tKxrXDPsNvUQpvRqsglpmlqDSRJ74JFHaNlBZFmI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826494d894-e3cf8dbb-5ac7-4790-bdb5-c3f54b3e4e00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f15134c7a41703e867e40378790ed9f753db679d6edd71bff4cd612785933d3
Date: Wed, 3 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659544852
