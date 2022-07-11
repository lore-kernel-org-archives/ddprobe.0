Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2711423A8
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 10:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657534012;
	h=To:Subject:From:Message-Id:Date;
	bh=i0v7UVXOuCBTjRr7BAzAphtVSYJGR4G6Q/0ujJL6dS4=;
	b=T67rpamLxCe0qYNR7N31VZlxXly6dT0okvrZgoHDPt+nWCwcPfjWgJbW1oN+ajfo
	8QzVcx2dapG1a54z4WZmWmXkuTZKgG6vF7cz3YpRv3RkixmbkR/sFUu5zWoisOScMPM
	7UzvkQdYyrznB1cl+ZCg7s4OxN4romFkF64hrMbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657534012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i0v7UVXOuCBTjRr7BAzAphtVSYJGR4G6Q/0ujJL6dS4=;
	b=aE1LWh71/aD10MLezI2hisrbLCeStQ24ylJIaPn6ORVN/rWrGFUzDQIOtXWeowa4
	qa6WXaTFkXZmaT9Lh88ie7COG7xzyP3b5xmPVXgwU/ETBhOZ50VRNJUahUf2ZjynLvc
	ThOE/kDEdt4tauI4Wds3KE7K1Rsjo7j/357i+/wI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ecb9dbf1-06fe8273-629e-452b-918a-7e3e689500ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6cea5829335b1488d51b3df5fe07620b2f6066b2d79d8e203ac2f4ae1940114
Date: Mon, 11 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657534012
