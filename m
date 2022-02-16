Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899FF1FA7
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644993085;
	h=To:Subject:From:Message-Id:Date;
	bh=iUzO1AFHpdX/OrJZPiGJqXj/TyiRIZsovplobPPzXMY=;
	b=I2MTenUhnGBaxfsxCfWSRyLwVjDV3825tdwcvHCn1TZMzWDXdlH3YSoKgPGkqW/A
	qjk1q/CXRicxMEFv7kryCUMSKTDdXikaqD1PF/HMilmZv9CdQUKWogrqS6a8Ox0wlFz
	YDOj9tyAeoFeobA5cJAtFDXkkqGGw5LLc/87TlQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644993085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iUzO1AFHpdX/OrJZPiGJqXj/TyiRIZsovplobPPzXMY=;
	b=NuQALY35ZBYHkRKLHtaCaVbcTlY/8at7cQ6hRFmNOJP98VOz+PH8SU2EHvZ77Mem
	HDbkRQsWZb59W2+Mhgkj8Cu7xCVQLx8KAMq9YAg7lx8XYvvIwtla+K0MrXUYK/v+GTj
	4h+I9CYa7DZnJ6szIvnudtHui7MtH3Mb1I56XW3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f013a7d46-8853c21f-a2e5-4eb1-ae47-bce57d59c11b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0dd2b1a78973fa210b0c4a58791a6d0933d699eab803b661915ba952d163b61
Date: Wed, 16 Feb 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644993084
