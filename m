Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C057D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 21:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644702026;
	h=To:Subject:From:Message-Id:Date;
	bh=xsrIM7Zs4BzpMFNDGTAzLE2Ok61AgkCq+oH6j9tUpbk=;
	b=IZOIJ5ia+EDpQh7WAh3c9kqemYtOPtjBGYlQ4XMl6wH+ADF4VxzlLoWqpAPAvVPR
	OIKRk2F6dO+9uXm5vtHvw8W6qugNxlfvn84Wfyh76iw+4OwZBzB3aKtnJRzeVAWPnOC
	KCJC03qqPKh6kyFpqYoboZiz0ciqo1N939DtALbk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644702026;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xsrIM7Zs4BzpMFNDGTAzLE2Ok61AgkCq+oH6j9tUpbk=;
	b=LCI27XfFr/XcjjkqYrvtuIDIvfNkYErg5Rp/EDnmFmFkGFL05REC/tlygA2xmNjX
	uuxxpygXdoKVKmH/3ujym+d//66jqsRsxFle2wcjqE0gA8W2Nz/vhOwkb8Y3pZvKlbT
	6j6o2+cVkxwdrjAIgfrBuSGQpc1+teVqdX1RIT5Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eefe148bd-ab8cd751-6348-4e7c-923a-ba48c435deb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39da27eea26d7f234066fb228f7c4f008d93279ff7a72cac30c8f98719dd854d
Date: Sat, 12 Feb 2022 21:40:26 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644702025
