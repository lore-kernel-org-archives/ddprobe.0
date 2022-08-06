Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67862EA0
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659744652;
	h=To:Subject:From:Message-Id:Date;
	bh=kZnk+0WcENeWupt4eHoWtXGOE3SeeyiUHS15iOzIAVk=;
	b=BP2SOHeItUcJoGV7+Sp8sAzhbRkk+75BwkdIK+joWCTfWSdEqsZqTNKUqiRIhSt+
	8W/1I39ULqojq2aUmMSv8eAiCZHPRsb9Lm10AGseSZ0kBlAQS2F4y3N3fDTxOhWiZ1C
	QuDjyKlutuG7Zjn6WLANg021D4ma8PYYMZ1ofLMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659744652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kZnk+0WcENeWupt4eHoWtXGOE3SeeyiUHS15iOzIAVk=;
	b=hbgGyEl7O9kt9eauXGTEB2fDLKNeglsuAe4nBRl4Ldw2VUHx8H8bNc+zgrNQ0m2/
	F1oVeIj5YVk5t73exEXticvanl9GYLgNYCS/Y0S4ahvSePVg0uJ+VQ7kgD9ntiAR65H
	cmTc5j0/njwkmpOxBKK1CgRPjWHly72RTYO5Pf/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182707d8d3b-6e8fa557-fefc-46ec-9d73-c25e2214df3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61c71ea77310f97be78df49af3fb69b50d7c1980037ef86972bd33c1275a64ff
Date: Sat, 6 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659744652
