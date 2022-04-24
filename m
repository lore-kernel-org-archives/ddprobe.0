Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A8317F5
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 08:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650787378;
	h=To:Subject:From:Message-Id:Date;
	bh=Y9GnoKs11F+GObm6XQ5iyfl+Mo1gX5aX/xLt4a7I4D0=;
	b=Z4xp4tOnzuZh7EdHA+VCbm3uh4QrttAC0EHEPe2rgmdFFW5UuLQ2VWtKh6+n5c2V
	c1Hkeb8PSh90OHNAbJIULbMEopX1PN2C42jjsDqoSfn5rvKZQilProeapPtqYPEAoji
	ysnqDcEueKtotwd2L/EY4lXuDmhgZXrZHlFbghvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650787378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y9GnoKs11F+GObm6XQ5iyfl+Mo1gX5aX/xLt4a7I4D0=;
	b=DYfT+A/0IEntNUYA4Jh4qnirN22GqPT5A803ZB+v5/G89fJovG1z82vNy5nSeA62
	zIurZlzAwsI9c0F4tU7zuI8ifpXFhVZbnXkZ7OTZ0NqFTHwsvQvVNktD3Jc4vXIrPyA
	fSTIW0eTgEzBoIbCjW8sVmybXoXdCiXfAYkBhEzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805a9864ae-67a16b46-b590-4d71-81da-c1c26dd6abd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff4dbf2cc68d41d10b5982cb1da3a2d368e17f2f2cbf3178f2fdf9d53f4d2838
Date: Sun, 24 Apr 2022 08:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650787378
