Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AC738F
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 06:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648621738;
	h=To:Subject:From:Message-Id:Date;
	bh=8D1s7/Bx7Fn6qZVmNmONAJw7wD8aoOz6iacScSkn9H8=;
	b=hqiiaopHgT3dXqcbSTBHrus2jKhqk4nevn2wtw4CApm3dYcSRS8PxbBEqVFQyXRN
	ACbectX+8nRNAFRrrm+/w2c3g4GsN99D1qwLiiSeHmrYOIt9EBS1nL9wBA37Fiv1x3m
	sLfafDYRxio5zbMKay59XCK7pYXbYN8avWEuTy1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648621738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8D1s7/Bx7Fn6qZVmNmONAJw7wD8aoOz6iacScSkn9H8=;
	b=iICdkhbUfjfK8sr4IzdHMzpqYz3Dexr4BRnpE799335gmimnLf9G7lNsPFerpb6b
	onKyB9vAJuYf6P7t270XqqozJzu+sELyn8+ce5RwXl1GhsBhCxRlLBxj1GA4S5b0CFL
	9KHoTaw2IGFMDU5JRVlUD2ksWcbqTd/WPtHfPeOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd983591f-9b2ad646-63ba-4d60-8d80-ceb4e4100905-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bd8f134054a43ad5eb84b2a0d3d46b57a3c53a2492c2f2a712049792631042a
Date: Wed, 30 Mar 2022 06:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648621738
