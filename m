Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127B3373
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 04:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655699879;
	h=To:Subject:From:Message-Id:Date;
	bh=NvGZrC73bBsqiZHoyCrFI/dxb6tw+HiOOYaMz3x0kEI=;
	b=VsmG31YkWK0MgKL/3ZiJ/jn3tavTEJ8CcjOHJUqW19u/lwVk1k3H/uONqa+/Qn9h
	J3IQSQgz7XGkQb5Ep+ITnQ6pG9jqeRH+gCQTVwtY/KijG9pmy6hCJRtwP2IMNJoaV3W
	DvDEVZGNrPGiqqc3Jgfyd1pd9MxmgKUvFWSWqRm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655699879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NvGZrC73bBsqiZHoyCrFI/dxb6tw+HiOOYaMz3x0kEI=;
	b=NmkSJ1AzTvr/KjEIrAESfM2Ku/9xjxL3BYlZRrNnTf+vGveS+mvOTbMqG8Grpyig
	otSzangZLJQbXYWSC9Rqm71VxZLJg2KoYEnhcVfGdir84Ks+5wNR3UQKSInZq/o1b+Z
	VNYRlM5GPQMq2JqeEKzzSl3ca9enhxQUo/i3RNzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f673536-ee2d0a2a-e435-4265-9407-de47685fd93f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0631b81f76d215d881ab0445ec205506277e60697921c11143b50629198b5fc
Date: Mon, 20 Jun 2022 04:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655699879
