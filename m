Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A4838FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645908685;
	h=To:Subject:From:Message-Id:Date;
	bh=hvJFw2tzjHWFlG7LFI1o9dm+q9ZHroOxBTELfsZR1Vw=;
	b=YCYI109BRb6vcih9sj/IOLVYYWlRZVxxT9/7RhOTssvg8p6X5eBG2JTzsh+Ongh3
	QJjCdkp+Zb12e8eyLsyV6VxbiKnV8tgR+ifWzFgU5Of0oaXiv5wh/CYU8xEtp1xnWhM
	u7j1I5hLH0bLhAgT5Ij3pPDzFOBKvP8ZMTjvd9hk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645908685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hvJFw2tzjHWFlG7LFI1o9dm+q9ZHroOxBTELfsZR1Vw=;
	b=GkD9pLP+K8x+1BqkN6O7waMgUVw4/Hcxxt0iksjufmZkrKM+S+oIFZXp1NNDUGMo
	M/IL5FIQ6//l5wKBhpfWSziRUSsZUvMoKXTY3GRxVG+1x4Gl4jAgfjslXj4EAUpy6b9
	57GflaqmgA7Au3SVwdgRaL45CljMQVPHcdC3G+fw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37cd706f-2e5ef92d-eadb-4c77-b752-a8fa1ac5c0b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c44a3928653c25ec6ec57c8f9faa501eea7eaf96ac9f411925dff72c14974fe9
Date: Sat, 26 Feb 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645908684
