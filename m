Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061271867
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 16:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650472858;
	h=To:Subject:From:Message-Id:Date;
	bh=wt21PQQUPM12XDG0imuiKf9e9QweS3EZbsn8LbbcILQ=;
	b=kawCWnUfZwtGiFShQHjnZAcfc9DIspAFaQUFrP/0n7RMbQCMec2PVmH14cvQwNVp
	IgcTKHnjJNIQg9kV9V/gyZ0gVrXeVY/7tH402dG9wp9WECN2z38eX28AM3qAEYlUpd1
	qTNzSKHI/pHDsqYVFzFwAbDRJKlUP0ssefGVCWWg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650472858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wt21PQQUPM12XDG0imuiKf9e9QweS3EZbsn8LbbcILQ=;
	b=enV51sZqBfc0Iy1jEzjCWZRXOB/VXe6U7uqMiOPKUwv1lL7K2kqR+wJ1FgU/lkJl
	qv8ULzUBY7mBFyWJBet2ex/+EZgDPTCMcou6nD6pE5efs2zDO5vgKwlvKFedXNa/U7s
	apMYyWh2dS0LCsgNC+UHtdzF6tQkgsoVO5HiFwGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018047d932a5-e64642c6-41c4-47ab-9e20-5f68f9f1c0e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7d5b647151a42b0f63d8f8f16af6c60ed504d1c3921a742bd2e179db0f8bbfe
Date: Wed, 20 Apr 2022 16:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650472858
