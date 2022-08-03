Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562F07F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659494452;
	h=To:Subject:From:Message-Id:Date;
	bh=05gyuC7PXjL+r9ZlfBwTupzPo+293dMvIe8PFYGMLVk=;
	b=ARdhX543NPR4vsPJ/9l9T9gVf6BMuMUdwm73N+1/IkrA4o95X30i++Qk+he6owHq
	EfETaOx8rzkbwjivyupfhfGWb4xjMGW5+mxe5xx8P5gOK6XRY4yyqV6wfYAkMflEn+V
	RYyrxP9Atasc5npMeyeLEKDEqVycEIWfjmIRDjYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659494452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=05gyuC7PXjL+r9ZlfBwTupzPo+293dMvIe8PFYGMLVk=;
	b=MU3RSXovqYROtkyaaWK901SmwEujcC54BWDhU1cXwE/ctAIr7dOU319Jcrd8KJHe
	WmMbOKuh7mNDim032uJ4l8VkfXrLVBnIP8DSrauft/2rqIFTEO+aouHEPqMGY3qgLf9
	4MXhzukiJFnMo7Fjh1PUOqCAFIJ8fLY+iaDghdNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826193cd54-a04b1520-a217-46f4-8e32-6f6cefc398d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06c332d8ee62934acf6d6e03fcee1113d4466f8d9765ca43887d196e30f37c40
Date: Wed, 3 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659494452
