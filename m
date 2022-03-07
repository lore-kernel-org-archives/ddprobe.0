Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8111638E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646644284;
	h=To:Subject:From:Message-Id:Date;
	bh=9rXohNQBhKtvV74f9q3w+Z5cW9yCCW3RjrlJVNuksUg=;
	b=gkyvKJKbYAfcXjhzMhs5GaC5D6sU6SKtCY8katzzWDCbEgW9AcasftEeuvq5DV92
	Uf3fcHHd/aQPSlIa7N6ehO1W3cvrerOPi4u1A/uLRZ82a2/Sms0COnYaZgG2PnNm1/D
	rMAxzBtsATCtFS+fHt3PecWsRikai4h8PJwmVizE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646644284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9rXohNQBhKtvV74f9q3w+Z5cW9yCCW3RjrlJVNuksUg=;
	b=jF930orsU4nuiIkbvzGSuiYS42ldQkxNaHCH1g+HKeVXsIwoC2703I58qyRGGZJ+
	17Ut/yzbX6/viYWhmdzxgl3XvQl4eUjd7flUHWaQLjtHA7TC19he3JnaDMd136gb+/s
	zZhv4HD/gAI6stDZYdILVqHv3jFlyaMgXMbfAUq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f63a5cd75-a275d834-0007-4d63-8e74-93770890e70f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b7028f4f1fa2a2908052a3c52d98f56b18fa04198b511296a1db3a40018d883
Date: Mon, 7 Mar 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646644284
