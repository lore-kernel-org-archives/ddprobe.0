Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D89B2F5A
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657022212;
	h=To:Subject:From:Message-Id:Date;
	bh=eHNvuTcLvUA5khHTC9ztOQojlJGUo/lG5LWqIeKRWpE=;
	b=jIdmIJSfBwB2xXQPJPIh596AIpHGSxvpTRwBpjbN/AN3UPA8cSlzKmqdJCGUAo34
	YxtdIuSLkNEyCDgZGBC2cDVm8ndEUenMjcG6FNTIxAhEhAZ+Pr8/XJBdOUMlDOoVC0H
	wUmmkBaGXzynjINo779vfYaiS8YDxdwigTPBmAF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657022212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eHNvuTcLvUA5khHTC9ztOQojlJGUo/lG5LWqIeKRWpE=;
	b=XiIajm+gNedMmNyaXExtnqB40DgHJSU/xrjs+Ah3JtVmrdHBifz60xQa5Ediq+w7
	QoHtLfzVvWZHsA+0T6jc2XWbqr8bhVEdX3ErzapROup5RoVPjAXtLaB5gKdT8ff8IA+
	fNbDhIR1dDFHLnhIyr9ouXQ7Y3Mt754Co4n8BH6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce3868a7-74c0fce1-0dcb-42e0-8ac1-498d0ecc1200-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25ca4462a5cb7005f27d160c9eedce77f0430362b6b7c72ea4e61568d9c24b63
Date: Tue, 5 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657022212
