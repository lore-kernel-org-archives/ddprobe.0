Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D6A622
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647147985;
	h=To:Subject:From:Message-Id:Date;
	bh=yZEZKWaZXMkjP4v+ot8f0x5kena37ygtULA/FOCbfI8=;
	b=mu5GWPGDg67tEwkqxhFWuxnEc2a06xe4NjB5OVuo+GKIqXParXuVCT46rAa+AC+p
	EETdLD21MPmj9nsQGv5VDayXFvVMk0beVJkiW/LstMnedSzES1AXs+gu2I8jNcI4Sw3
	ejaMtIhL8QmUPsbJvlN8F4vKjFxZv4DExegirnGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647147985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yZEZKWaZXMkjP4v+ot8f0x5kena37ygtULA/FOCbfI8=;
	b=RrrWLyk3+0IRZmO/lhADJqRwcoEsdM1AxHtC8OJ1Tl1IbJuFqn2eUoSKxpLs89tw
	v4dXQJgHga3k0rLTR6lj/Z7KohmPqIQibpBA4/qd3CHZSvPDwU945xkeGgaD6AiJ+AD
	90GpcxfQg+tMLB6+o7L07MkVvBcyfmvHTq36B9Ww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81aba795-df0bdc84-c332-4884-b08c-845b39386227-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd048d2f4f9b728115a9c35214534a7b497e13d8003d27a4984ae905aec66b52
Date: Sun, 13 Mar 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647147984
