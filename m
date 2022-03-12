Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCB12F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647103884;
	h=To:Subject:From:Message-Id:Date;
	bh=lYvE+BqYY54ZBEAJKDWwCI09rD1UkpAeqkkWxQ3H3ZE=;
	b=G53k1U0EK2xeM0JF9XdZBlFKGfpjJRGbhkAM9KC+YCP6xK7Xx3+ZGEG7qiTiSnIk
	haSNleOYA8czq5UTNUZFJP60uvXnwG0QnW9IS6fvgKLoGWQ201lqsQqvftarBuHafzW
	4vPQM2huZMZcxkvFG/UxVtQQsRufte9vNfGQw7ys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647103884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lYvE+BqYY54ZBEAJKDWwCI09rD1UkpAeqkkWxQ3H3ZE=;
	b=TDzjf0YwIBEGGCiv1CdfovtSQWqRgteKB2KY8X8xqiW5P5+0cggIb/e7VNdqy2q8
	EqJMDPn1P/gWzwPz9vY1iMy+ZjXBUE7spWG5S1jvjb0+lRb53F21/T+N4nOQvsDL+/v
	ruuJiRGFWmSShaDvYgYDFXjEgmPqYPXMesTolkZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f0abdad-4c307c18-2a27-4820-8734-3f51439c6fe8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3705e752c4d2985f2c5f16c37350835d7e034c4093c05b639bb0088686a15753
Date: Sat, 12 Mar 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647103884
