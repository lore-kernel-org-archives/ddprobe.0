Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A67A1388
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644923784;
	h=To:Subject:From:Message-Id:Date;
	bh=z4Clw96tXHqFy069Ra+gzmtTUqUfpG1Xn6tSbuxUjBQ=;
	b=Bt6bJUwaZdvncnCOSr4OfZkpu51bu5e0kQDLv5JCX/Dftw+PId4u16uh5EE/6K9Q
	joAusspgW1WYouE5xp8/8cv9JY/lNAHqBsFD67J1G3KLWShtfUwzgUYNL+L+yp0Fi2S
	46HsvVj6wN5Y+eZKg/WtSbDm0DlAycCj2lekfF6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644923784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z4Clw96tXHqFy069Ra+gzmtTUqUfpG1Xn6tSbuxUjBQ=;
	b=Gq7zJ6Um4OfpGH19cKXvey/rjBxFv4nJkO7KRn/Ei46dLC1ne+WjGU/JQ06Cwge7
	y4PYyvAqsJxQotvjNdmRo7qUCEIZhLepf15MeznmMr0VEWk8sigRGs7px2Bm/L/95l8
	o5GgQRmbxT6S9+Sovufr23uQ6z2/XTsETN0hy4Qo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd190e0f-ebeec867-83fb-488b-ba8e-0d4734f200af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3282323e10429c0e44b68c10e6ddb2fc6009c29c96329dd7d0db4923bb93c27f
Date: Tue, 15 Feb 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644923784
