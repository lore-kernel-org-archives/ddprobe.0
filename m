Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89775643
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647847584;
	h=To:Subject:From:Message-Id:Date;
	bh=vj3Ezj18qSLzccJiRznybSm2vu4q5DqtHPO2ld5YGdI=;
	b=Gf8q86Fa0bCie4outADbolrkWcuhXBkH31ETneH/G2sM+hj3KloZkAbZ91iCoPzR
	XcIqRM+XQS9KLz9xYCy9d9vsbMq2/HKdHJ0XQAyCXe7kthP3eyiOrnpZF0nwmH6BvCp
	9N5E65cfJBqBxoiIYBNnXVfDffHYLvE50Qa2uV6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647847584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vj3Ezj18qSLzccJiRznybSm2vu4q5DqtHPO2ld5YGdI=;
	b=IpaXWcGyyxZcWhqJd6sxq7w7yu6Y3atnLHKaaW/d0+LwYPFTBowlfa8IosilSdvG
	uP9wH9W0K+7Sn+dLnD8hgscoeqPcsWcV4JVHH3DcjEl5gB+gOsT+57nwtXhMdl7BeL9
	M4Z5mUplgIOErqBGas9wG5jFaG2Gs8js771ytd+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab5eb3e7-92135c43-d17b-4a01-81ef-a1e08e823ded-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4b628013c08a97fc5cafa6248dc007f64dac24621ad123ec2f69610ddd473da
Date: Mon, 21 Mar 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647847584
