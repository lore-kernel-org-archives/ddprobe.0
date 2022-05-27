Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178481FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 19:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653678959;
	h=To:Subject:From:Message-Id:Date;
	bh=uXa+AfGY4BQ9xot89IQW+jSYYMJ5NTrWWp5fSh7lcUM=;
	b=Mu4QGAm7SWtswAfq+6JM/PPr7TxmCZuxkr/mXER4t2u+Vmyj8V3TKA/jqJw4uvwM
	gFSqdbvD3D9BmXcCXQ+XtgOjFF9k9oh0blyw8OGphQK/oj+S20WGKn5S7LB6Chprdvz
	fGbCXunbTMcGJdKbbdDcp1U5S7yxAOYCZJhwPRfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653678959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uXa+AfGY4BQ9xot89IQW+jSYYMJ5NTrWWp5fSh7lcUM=;
	b=RojMEX+FQu3IzqKL79OofmYRYczXkfYsQL2bFNC+N2/cQX1lXiRSXGmZD6AVmHnx
	9LdygRNbc4V++1+zxZFEUqC6wNIrM+NnMwPKkAndqRkMa57bpNnbTI5dlOk1RtwwU39
	MkNIFvkd9JKavpUMSR7k6AiJhIJWNGLKAega25FY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106f26ac8-27692b16-61af-475a-9dea-6de78a47d632-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e3f948cbab7a92016defb28dbad19c04859161108d6b960ba6df17632a38e3d
Date: Fri, 27 May 2022 19:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653678959
