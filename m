Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8990E38F5
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647458484;
	h=To:Subject:From:Message-Id:Date;
	bh=428WIDjVcKrOyX5giWDLIvEE+1dCj9MWZSLn2lKR054=;
	b=j8TYB91txkbj00OMQsQe9YuIKBzR6k52k/0/liTWP3pWeStrSnuhQp5yxSMpSDol
	626KZoOxaWafCBB8fiUzT+FaK3EDMo4m8PdOkQx8kNocdhXkl/941pXC8IjYCr4G6s2
	mP/znTU0pXxzlFwOdYCBjbknHFMfQWk9HdR4INdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647458484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=428WIDjVcKrOyX5giWDLIvEE+1dCj9MWZSLn2lKR054=;
	b=KVKQOhySHnMwIZY1yG3ZMrvWxChgsfQOKwdO9MtPKf1H+ibQ0TGKmBRDG9AU/pD+
	2RfQRlQnPOuy5kt/3vhWjDcHEiNfxhjr04Leug3X9GBmrGE5g98CG3We4+1dbKf7xck
	80NeZAhAccloLZsRRzGH7nMg4bMrIRGFLrMkBS8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f942d8244-57b65760-a385-4bc8-a677-c89e03836c16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4a4267ebfb247a32c32cfb5c4da99661ac01e838afa8f2ff6343e1370b8f0a2
Date: Wed, 16 Mar 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647458484
