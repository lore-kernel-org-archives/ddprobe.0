Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C668033D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647782485;
	h=To:Subject:From:Message-Id:Date;
	bh=8uhsWK+7pX0wOK0dyD1Q8sKy/Aa8kLYQ/9mClIaFaoA=;
	b=QaVqGzdtOdWtc6e0Rb/jRuleFri/4AjLrJgS8ll6iDuDW2u0SQy2brSfH9EtyPnY
	07BOD6dJpbQovDUogNBRCMnVRyKWHASX+CMbZHH+5Hhw69NoCVhR0u154QDbkdwwxF1
	Rb+w4VmNNCy6o32z/RvXRpIduvux3IXRNRjzK8UY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647782485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8uhsWK+7pX0wOK0dyD1Q8sKy/Aa8kLYQ/9mClIaFaoA=;
	b=UhirvcWXNGd34nvGk1qOxhPj2tvQ/jdIaBV2O69pH2siy70zAn8IbLmVV1b3Lkx9
	9FChuvXutIeJpSaZfsqo1f9MD2M0p8HZ26yfM5pzWzCMvYF4uIPpjUl/pjPCZ3KWlfa
	bTWMZ+Ww7plF3GkAuPX/6ot9cjwEIpZW26oHJruw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa77d5aef-ea8e783e-6c7a-4135-9ee1-7a11c78c5695-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a8fa0502b909660e1a30f94b0b735ecd4db962c75ec6a152c43828bceb8d08f
Date: Sun, 20 Mar 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647782484
