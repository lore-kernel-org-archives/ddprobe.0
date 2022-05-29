Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D381615A8
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 01:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653789599;
	h=To:Subject:From:Message-Id:Date;
	bh=6MBXIKI71isPpRm8MraB3V2YdyxViJUoe801Izx6MmI=;
	b=HVDlXyDhjMke2UIW75WxYI8cD+VMAos4zsvf68f9p3E1oBkDOoSKRaaxdOThcFVf
	2GUF8objfEkGItNZCSNGfsEczfz627Xl3BRRCNts2ithyfdVwRJx0nonC02+ONdm16e
	u1NaZmbx1M3dYc5aed103Yp/8WA02X43rW6iBPqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653789599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6MBXIKI71isPpRm8MraB3V2YdyxViJUoe801Izx6MmI=;
	b=lBzgzY/XEmmjaLHdkzNVxlb0MXwQYfLNDWbNp3JnQmCNkLZSpxAxQsiZ+AzR15kx
	jJ6aqqG7N2vsRF+pxtFOis63EdqFi+SSe8MxXfDHrrPz9WGN6P6LcSmfMGc5o0oYrgP
	cHoHWQ1p7NbSSMr7ms4s3G+K5otac5tAie5+yy2w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810d8aa651-e13f6c7f-f0c4-4114-b639-be7fb8d9ed95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 309c52f5778be88bc66cb906a1449fcae9373f3484f8049eb8396536d460724f
Date: Sun, 29 May 2022 01:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653789599
