Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7388D116D
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644891985;
	h=To:Subject:From:Message-Id:Date;
	bh=a1+j7klHG0ua7T6DcPfawTvqhdOthM0sdQiD1UUInwE=;
	b=W+tpHRbVgr2rYul/gTKVw4EwzdL9tHVJKovlM8+0mL9y+UBCOGPqzn7z4jEdlDw4
	KdUlKBicg9Dwy+OIvWioO8uwKSylEYOPNGsBd9bLmYExrmSMxNhliLFnDV1aZbMa7Yc
	eXhyEeqMCbXLpbsbQAr5fGBL1yKPoqrXMYx6UaK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644891985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a1+j7klHG0ua7T6DcPfawTvqhdOthM0sdQiD1UUInwE=;
	b=IS1tj5kL2xlBGjA6i+6vQXFMLFmFVz0ewpc+yVtDtjdylipLeHTt6+Ga0OkPVSEK
	MyvzZDLfAXZVkRSscw6c55MCvxE2U2DqkuWqSJ0MYPbnp06KsXIycxB3zD9tBm5CNFN
	YKN55JbFGPV7+meMsoCo3dWPRnx15XF9p7D3ny3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb33d3ea-591846cc-107a-4f7f-9e7b-6ce2c70c811a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75fad7389764de7fe99c8cf7b485e15bbde09c7abd3fe15dca2f337685ebfcaa
Date: Tue, 15 Feb 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644891984
