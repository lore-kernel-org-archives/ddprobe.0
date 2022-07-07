Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EFF3D60
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657152412;
	h=To:Subject:From:Message-Id:Date;
	bh=HrQbYtk3q0ZCkDs6Ark6pSN4SzeCu08s6G3pHX+a/uQ=;
	b=U6nhLQ8gfplGVP2Cx6grcvZqDsv6n5SaYryXfqegtvJhLnIswUW/2Gi1cvmA7cU5
	kNCUvreEE3wAe5sUNgdVDJqANKymXpiPQ6wGWGmVStf6ZyKtRYYc6YipCRJ3QG55Tjn
	IXi4uXdwyucTSia7D5KvK3fmlLsi91e/LoiYciC4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657152412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HrQbYtk3q0ZCkDs6Ark6pSN4SzeCu08s6G3pHX+a/uQ=;
	b=i1Q9+2EHL8yWRdB5Fza4QnjsC32ibAbIPHvZ+UJx0+QyK5feiKeqcs1FWbmv3sg4
	bU+AIvWP9ZkpGcF7d3jFA1rKeAaA5vt4twQF7/QBcCxkJFdSR7UCcL3WF5J8nh6UBjP
	07w561N3m+c0jP5RO4JtidF4uoG/D/wugpCSi47Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d5fb1a6b-1a995f4e-3499-4cf2-8ff0-6b062e18a43a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ca63d3dc08d714dfdfc2d8f450daf9efc1fa0fa8e7f54b878e75323b04e8353
Date: Thu, 7 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657152412
