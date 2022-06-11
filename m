Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46FF2F4A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 23:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654990859;
	h=To:Subject:From:Message-Id:Date;
	bh=L/VV/4GUJ/FdcPr8QjIG9FG9RY4Tk0jDn6CgxYlqByU=;
	b=eUoGKsyTpH/jLQgZy50ptBY3vQUGYqxhAN7s7s6C7+Y/nQEqR9+FUlJe8CFSYfdw
	ZkoHVJ536gNOqVLXEw3NcoxyLgbnKqAzZMw3zmUAbanmR+nl1hLrwYjZ2pBOCaHAVgG
	iuLtZpFaoPUJASh5u0Q7HW07b8se1duo/azlqato=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654990859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L/VV/4GUJ/FdcPr8QjIG9FG9RY4Tk0jDn6CgxYlqByU=;
	b=bmO9HVrzwCHVJMR5+ep90freYE0uB/KRUyThMABHFEzwwL6Eo2ljyT7cMwizCvSg
	IWZyx76zQFN2Y0dUxOg7vZEClFq0TjVaCG6NuhYt5oWJIaXuEBLyw4xawnJ3BdFd9a3
	ClWboUsq5wjJKsAXtMEtDXiDddw5yPf196pWBqWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018155246bef-70e70f08-aa2b-47ee-ba7c-1141b4b1e697-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e8ccf7cecd4396de31b0ffbc4bc509d80d22254811f65fc9eacd1f510699530
Date: Sat, 11 Jun 2022 23:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654990859
