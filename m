Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF2B7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646837185;
	h=To:Subject:From:Message-Id:Date;
	bh=+gXovpgBPgPhBWbfqGmHKhKJpyYttPtUp9upV5vEPJg=;
	b=B0yBJzhIychIkHWxy5jd3LSEGTG1g+Ne0z25mpu+xArX7vtglYjivn3k0U7pUMMV
	1fjaN1OmuZl8u9h+BsQXfo1ZFf69Gt3dulEhr1ccW79UBhn4Ji92nL0GuCV/ZrDAiG1
	uWgfFpPitdNUeQiCrNg04BY81nBzRaiAW2MJMVPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646837185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gXovpgBPgPhBWbfqGmHKhKJpyYttPtUp9upV5vEPJg=;
	b=Xxc2xOZgaNE8oe7LBIVif8dAQBVAnakpu/SkSYJkZ9jaLdmSKu3ohzRQV7NjTZP8
	9FYFiio9DHa1BWJh3jITUhVZy1Z4ctzsBNOI6UPFJjRpeUaP/zC9aYfvX3jqLOzvWJD
	wi1bh9pUM4i5S0j87pzrYzsBFBa6st3OC0CKoEA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f25392a-44d341d6-51b1-443f-8bc7-88f0f3462ee1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5732cf12bed59a45bbe40d76385baabd630bd02c4ebf4f0566d3dfa5ca516193
Date: Wed, 9 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646837184
