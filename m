Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1344A15
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660244452;
	h=To:Subject:From:Message-Id:Date;
	bh=m/o4rB+i7c+AnEe413woJjbmQy9BreOL6sU1bp+LkkI=;
	b=JiTNi9FksyZYKKsgR/b2N6FoOQfTeQfWlZrc4nozQ5PR+LYC4gRhnHD+gd/Epo9l
	be9tadLlLvYFAQe/MHmJlyVYOg6giEdq71f7BPMo+u7Zs0kIy4ijbhDRlt33PsQCtM/
	PN4BSmz+XWy9aFqkMmUpJaDef4rbkMjqNyBEVuQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660244452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m/o4rB+i7c+AnEe413woJjbmQy9BreOL6sU1bp+LkkI=;
	b=FiwVPb7pyala6pgsUxiOH0rbq9mjRfEOpuIzFspZ66Kf3rVtrYK2aiv9+HMWHw4z
	ueCXOQiMp2cy6TdMfY22GiiR3vlvw5KN57ctxzKDNiDzyABsf++fJC/JfbMVOAIRr2d
	vAq8Q48JFYcfZk75jNPxwPTuqgVqKMqud6xOJw4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828e47e52c-0ccc766a-7762-457c-8773-1f199d88599b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1af54459012f8e3ed4498fcde6c03e9a9dce0d2da91c7be9d4f57ee22699692
Date: Thu, 11 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660244452
