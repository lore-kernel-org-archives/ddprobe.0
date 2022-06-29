Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089EA7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656542812;
	h=To:Subject:From:Message-Id:Date;
	bh=43MNZJytcMYPBDgbKippnWnyqk5yPiZU4kMeqo0hOio=;
	b=XQpaVC6yIuDD6h8aqSG/DNEJEpo7RfI6CUfUTfLU7tlqpVhNLGFMqdXkmNCMWNvg
	rCOWcbphY/zFULxT3mciyj5leO+NePACDpkZkXPwXbtG77sAlFx7HyEH/AFpyDR5Ebg
	MDxhcRdcaO3klFrnk3OJDQGhKfA+HCjr7vubi3Sw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656542812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=43MNZJytcMYPBDgbKippnWnyqk5yPiZU4kMeqo0hOio=;
	b=AUeThNSury2bsrEoc55HJc9tHixOrRosmPMkKy7gE6DfC3vDxz+UFS9uj14gPR/2
	b3uCH3kP9z8SdRP5jdyUBv61qrJbY5+st/KxbrqFoNFbDKXmdhgOQn5atZnQKnCN0ly
	/CP+2ST99GUa6uC6iR2MrVM7bFCfbYrfD5KR8e/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b1a5588b-264301cc-9718-4aa6-8b9d-147569f6118e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c6bac46c573f1683363f14e80982f6149955d91bdc18b3de2bfea90eaa00b34
Date: Wed, 29 Jun 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656542812
