Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 865A27E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 23:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658792812;
	h=To:Subject:From:Message-Id:Date;
	bh=9/+SIMxyQYzTf4pod3rINNV7KpPWUL7SPVscPlHyvWU=;
	b=MNR+Om1cMQvhCvfslhMf9OnF4il7h+B4GSF/4VEUEl/o5UyZqREB+RltIpSPM0e5
	oU1CdWcipcwzU2UD4isgtz/Qp2miS89NO0SZtqG9JH3/tsO31ih2zKousFGZkKYh0MG
	+wgszKW9kmM7tcazA35quXoi09MawifqbmaNtTCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658792812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9/+SIMxyQYzTf4pod3rINNV7KpPWUL7SPVscPlHyvWU=;
	b=c3n4NneNXBXLVTloO0KglmQpV2dGzzkol3gkcjk9P/aIGUtVwvjt/XL3lU3+syV+
	SHm5dAkXYIP1hdz9vMgBhzIkNtTxtymO/HYCHmEiZkweOcZ1GmHFVuFqlZo2J7wsqio
	0zvgSrpTP2TnE6JKr6K9jWULkL/MqCBBgOf6T4YU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018237c19f11-1742415b-c98e-4a8d-92b7-e930d09cfc3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58d0998eea0524a80d905022b1ad32a9edacd88a5c4ccee3384451516b3dfc15
Date: Mon, 25 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658792812
