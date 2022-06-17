Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FC54C95
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 23:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655509859;
	h=To:Subject:From:Message-Id:Date;
	bh=CAfmF16NG5ujQ42ZnxX86H0xqYW1HUBeiaJppMANhvQ=;
	b=gIOR6+3MkhVZN2f5ZBLTS+hz/6OVaXkxMCsM370/C7wYQQ1ZsqRD8RYIfrzJWeCU
	lj6Q7VEuaaTV3Qtm1GHZBz5Z/HlzPUgMKIENpDuBy/6zmYAgjCTM3Wj9guAtlXnA9Mt
	NpJGYUd9bLBbSXcWkYbPxtAjBLQeBotNHqLK8jr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655509859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CAfmF16NG5ujQ42ZnxX86H0xqYW1HUBeiaJppMANhvQ=;
	b=FAUCRDuEr/pJk+jlnwfBBSUTQQYteDzOS/ikOJ0AWDwEcsO63BJcmZ4k2uzCxxBu
	UwMIitC0uv24j/cBf2uR9omRWV9FP4sn9te9aJptAtS9OVQDvtGoULSauwXWY3n5Uz5
	tOyuQOvZmR/JvWElnnZheGUzBSJbowMw7CPsuYN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817413bb9f-4aea06ba-7a68-429b-b36e-3794bcc6335f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06b200de37bed64d7690dfbee2a90478dd144d12fe3ec10aac6d211aee13c076
Date: Fri, 17 Jun 2022 23:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655509859
