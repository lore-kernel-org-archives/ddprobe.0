Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F25E7C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 16:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649090578;
	h=To:Subject:From:Message-Id:Date;
	bh=aq8h8TLmB2jesfecFH/3CK0O3O0dUfhMLNnyMyUXPG8=;
	b=f+QOQIzUYNNEo4WXaWTKWJZ6y7gzrZiW8v9OGAJSRNlTdnAZBmdJbcnZA5ruvB2U
	M2DYX0jJiV+B++glvc1tfJuGV7K1av92iI1uvay1OJ0j9FzegAn/nRd11ASKw8Suq8r
	0xRJIpJHnn0KNYBgYoCKf+/aixZWDvU90nH2w1ag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649090578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aq8h8TLmB2jesfecFH/3CK0O3O0dUfhMLNnyMyUXPG8=;
	b=IQVQu9lXtWUjZ1qzgzW3TUtjrE+KGhwf4NHBtp7vLMjAnLfOksQqu9aMTIt14MgT
	qE28qMeOW6onxNZofKjD3mxDx+sAyizBLBRq/OGh2CFSZY8shquwE3qZOLf4dy9H4v6
	6vMzNq3+dhRMSTJpZDwkVLVNtIv0tkLFZN8M9PSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff5754783-5f58c30b-4ed5-4dab-9557-76f3cc52146a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a84b5328effb53dc74d16c0a43efd511c10a6c25c38b3ddb934a491d3d05dc46
Date: Mon, 4 Apr 2022 16:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649090578
