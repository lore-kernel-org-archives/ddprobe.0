Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206E4816
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658101012;
	h=To:Subject:From:Message-Id:Date;
	bh=aOjpG7x5C1LRYwio3y70AM7O0mhBYdIXdF53txbdiWw=;
	b=E2Oa4LdRnxmvp9AIfFJXrqdZC8FVuYKxNxFK8xo1S/UEUmlvcjx1UJdo0depRUPe
	+Bym0EjHyoKhqp6V/+OwRDIT/y4mHFGVHAslPipBF3JLSYxxrOLCrMOUBK4n1ZGlT9f
	FzsifOmMpYDTeQzc6sHmG08JQD1uVgS7bLwyp0fo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658101012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aOjpG7x5C1LRYwio3y70AM7O0mhBYdIXdF53txbdiWw=;
	b=eUIrSh9V0e2V9Ww1RHD1rdo9l6tcFJmKV+pxVdjD30AXQCBI2YQbO7zHnT8N6av+
	xy15yiNqXKvmuXXxyWXFB4CK/zqGtLCFMAZJmijQtrVEPU5ZvL9QIM0h6+AfQA2pTsn
	vBtydUzmH+E5Gy8ysUBxy+uX/Mkdl8hQ3ch0ti9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820e859749-2f1d0ec5-3fa0-4ea4-b03a-c9ed80d2ca86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d9815263bb7c065edef933b3418fbdcadd85d58a2f5fe6feff2849ccc09c6be
Date: Sun, 17 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658101012
