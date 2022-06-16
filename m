Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238456AA6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 23:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655423279;
	h=To:Subject:From:Message-Id:Date;
	bh=njpVzZ/6GFDwo3Iqw8nowGhRhoWT8zqfdpqgq89q7Ik=;
	b=CzAvBDoZRSl2X5FHIfj71XcW27LRi7Iu4r+ubuQGF+N1Ru774tGBfCAbkFADLcfj
	JCWbdbmvj82i2M+ccv4cPXd7RajByQjhVm++SOY3hOhD3rXO1jfaKUZmlXMWeLQdOAD
	dWjedVKuJkVTW8C4rUc3Y1iuQWWhDYgvYE9xqCGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655423279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=njpVzZ/6GFDwo3Iqw8nowGhRhoWT8zqfdpqgq89q7Ik=;
	b=YOh/pVq2pBa5rbL29ZbTEXtsIDAEbDClZb0GCJlIJyMkvg5Tsf47sw/nrhZXp0xO
	oQ6tNwESbPmN1/TSgJC+5XowicEhmTVqDZZ8gBzYtzBMZWj/2aD6ZHXm1fgnOYseYSB
	04Uy6BBV93L4FJ/CeOeVz8frD+L4w69cFPCPff2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816eeaa0c5-45c54dda-95ca-41ef-b519-4999918669d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b269708f467ff2e0cb515d567433f0ed16f8c874e5e748db6046b33ecd42c4bd
Date: Thu, 16 Jun 2022 23:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655423279
