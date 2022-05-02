Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9156217C1
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 09:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651484698;
	h=To:Subject:From:Message-Id:Date;
	bh=sfjLHzU1lNXgegZzndjSWx4zqUQfBlNsqy0AGne8218=;
	b=VEckB9AYy0+yzZPaxXJTfVNt4g52Hr+q/mJScIVfmtvuerSu3UHVV2j438mnvycq
	9mzoJMN8rVsg7Im5t/y2Qb7qegTAkjYRIIXhOr/t2BAQ/tmRBHx+SAxFFs4XXXXZxLD
	QIzK2jyxPbHmwo+QurRj8p+JKsETwAByaor0XPB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651484698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sfjLHzU1lNXgegZzndjSWx4zqUQfBlNsqy0AGne8218=;
	b=FHUvOCMG6yq0I3rwseBRMsQ5N6mawZFZtqS/DyByH7GzozxDsgVOdvSWNFm2js92
	cHVi8kH8gTUVyTVJY5cE3XsuIj3ddB3/i5IidGw5sRQlgOv2a3qArUZRFh4bp85623l
	hBGplQWgTUg3Vw4o2Jb+NxpxIasEwTJWhd7w7BoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808428a6b9-3902edea-3af9-4f23-bd84-42c32c3ed906-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d95958378aaf1840323ee9e84f6402871053b15329cf0fdf4df5ecc6e373532d
Date: Mon, 2 May 2022 09:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651484698
