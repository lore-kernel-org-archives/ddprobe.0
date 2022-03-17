Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69C51FD3
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647476184;
	h=To:Subject:From:Message-Id:Date;
	bh=o0onOppmZhIk3NpRVrHeUazaYv6CEwIgrbX7cIO8LYQ=;
	b=fhqZVjRz1DK1+VYU5ozqR9HBQ/PS6HL5s8UyrLImlSTb4VspOOKdJbdFGKcFOlu3
	2pEMDm8BMaS9Azc4N55OiTKdf7gPRTDb+JKf327jC/GNHgwlQ6PSh0pICHgQk7Xn0iu
	v4frz0z8FqeN4f1Nvfbm8KyE7BGeED70sDZiO1c8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647476184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o0onOppmZhIk3NpRVrHeUazaYv6CEwIgrbX7cIO8LYQ=;
	b=b5XoWBM5meHlqOuMLBHRMtS2566dbK7SswrxWqEmCJ9yNbzq8Glv3XJUggPbnC2U
	w5JhRY0hoMNgp6KvWgkCmDHDwxDnjYWPnzI8Fcd6+xjE7UyX77oFAsctu4+7lS9GcAP
	sDF0EbQd/JVxRoTileBM1kTRjnVMVQjpJ8oSWg0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f953b96d6-8e22773f-a5f9-4271-ace1-cce0d41dfbda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 594e4ff2846b9e907c75264138fc57c64f38ba681a646d583e6144022951da99
Date: Thu, 17 Mar 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647476184
