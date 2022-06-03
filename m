Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBFA7E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 05:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654235399;
	h=To:Subject:From:Message-Id:Date;
	bh=ng4VkL/a9OT9Xjy9kYLAqYjL70k8MPi6HK2f2dG9X9s=;
	b=Z2FInO5sN5A9/bu4BmDDTp38ZcHRBnNMI4du11Plu/z7mIHvOdvjAoFP2azJkgSf
	zb9IfhnP+q/yekMLEe8ZpANt8pgzxIyaU/zf4/YO9ax/zbemFJ7/qhjms3A+YgXPegl
	2cp2b/z6KKA+6DaomJpWQtPFPP96CifJSYjy6UZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654235399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ng4VkL/a9OT9Xjy9kYLAqYjL70k8MPi6HK2f2dG9X9s=;
	b=DPqGWQ40CePsCee8uR5ztpgA3SP1C9y5s0SFnmOuJUet+GkGqNmB+uineoIC535f
	bFhgnnUjKe5Yrh41g2z5nFpsRxbZJww1ZSR3A+zbtiO2peiky53uyZGS8j53mrGznC8
	j1uJ++9RIXcbOzGXd/USjuHgYwbjVj1/CSx4zTBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181281d0444-e5999cb4-2674-4aa3-8f92-f0bb7c8d4f0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4143b03a931f32146ed1f808ed23f25c610a1ffea0cb07bdd1192851b18c11ae
Date: Fri, 3 Jun 2022 05:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654235399
