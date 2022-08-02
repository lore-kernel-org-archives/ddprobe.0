Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472497F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659436252;
	h=To:Subject:From:Message-Id:Date;
	bh=uwQ6662d5akTcO5zWqRWNJ6x8hxcbPN91qFidXRZGH8=;
	b=j9bAlkkgBMukgYmk5VmXaw3tZX1au7Spvk59EysqajorFK9+4Cjzb6na8rPmjApS
	sy8YBMl+yUkTbG7wDQowQ0b0Tl6Q8xCeekcXlYFARq1JJLKu5ylZNMDepvsnNYLdZeE
	aB6hH9mYOVZUyuHNbx5L0bNf5y/OkeJC9kWZ4IuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659436252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uwQ6662d5akTcO5zWqRWNJ6x8hxcbPN91qFidXRZGH8=;
	b=G2jrWovorGBup9ZUWZ67nVBtnu6vucKSdLB0FJFIcBL2rqaqgpePwKA4GH8ZOnbZ
	RZDEJfpTlycHKVjfpUugACgQ4a15elDuxBjtPSBdaxt5K9wt4/jFbGmxrvUhGyQEEU+
	n5egx3se4ir4UEAZBJYUoB63o+9vTjF+aKexczvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e1bbd93-c85811f5-e8d8-454b-a39f-5772affc5aa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75969a9b48c81a4bbe654c6930fb2a5c11a68b3addd1ce9ccd8f67b13db40557
Date: Tue, 2 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659436252
