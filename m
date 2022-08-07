Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548281C20
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659852652;
	h=To:Subject:From:Message-Id:Date;
	bh=Xtu2nnEO4EOEV1nErfIIYx7cmTZiQzRAZMDdog/ZSg0=;
	b=R/omdlSoKW/eCSmtXYuMQiis1oHBHzR1pgsh7bdnP2OLM+Cl5hW+dfIsMf5piLbE
	97veApKcimHzCCftvBmfPPoC58cJY4lYBtz5LWNYI4/FZiSFLzyuZNzZhCZSiD8kNKj
	rlcgIBwdYkuxC3lZCJzXs49h9QFHv/Srr60Y4Dn4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659852652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xtu2nnEO4EOEV1nErfIIYx7cmTZiQzRAZMDdog/ZSg0=;
	b=BfNcbLWgYVtYawvAAFX1szBhxaO1fy7T3XZu68mZ492dyoJ0kFjKwkbuM6SbCvpt
	B+pBT65mKrQjwCxlRL4kAr8LPR9lABYihdO3vdH5PttCyajknMYqREp5HkVjdxGQv88
	PVGB5kIJHUnlp/+kgIa5U7gN2GBU53QOflyJ/cVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018276ed8006-15c73ace-a44a-4e65-86da-9b216dfd073e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61ac2baa39bde58159790c60f36c1de7ca4ce7860f839b46a00665bcef6d2762
Date: Sun, 7 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659852652
