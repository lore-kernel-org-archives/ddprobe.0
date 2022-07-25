Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD5C1844
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658761012;
	h=To:Subject:From:Message-Id:Date;
	bh=NHRDxIJDJp+YTL50vMQsJGsUBzCBS95H/n6WqDWGgxI=;
	b=JGjLyXmWjqYA/YO+nNkIV0osOig+1paPvontoPaAJ//EAKQmX8QCwG3gbapsQlM3
	h1p6cBVoo+PD7wJcKQLe4TJUdEK326o9b0mvE1fF3TRih+2JjABgtW6RjZxpEkPw8JS
	Tcz3hWOz3teTfUvnRkOeEyUnIoyj3FepXPDrDzZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658761012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NHRDxIJDJp+YTL50vMQsJGsUBzCBS95H/n6WqDWGgxI=;
	b=cLOFB58In+zHVLmKXMTN6UWg8YsmVWfodfrl89+NyXXeWwpQA71bjpqEH1yYzRsC
	ZhuDaoIpXmtIvGedwyIalJXAOlXFdOLGfn6z4KJbXtixu9dqHhiN/xjJXRpkWmKLpOJ
	+z2xgFAKvW3s4r7BxnL15iZfzoHdCjMW5gwNf9nA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018235dc644b-24008ec2-eaf9-4d38-bfd6-31eaf958763d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7140831a806e3d7ee14eb132cf7f9e64276ab5c243a96467040d74fdf674ecb
Date: Mon, 25 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658761012
