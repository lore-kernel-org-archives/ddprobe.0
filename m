Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2258A2F2B
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659738052;
	h=To:Subject:From:Message-Id:Date;
	bh=Vaf3jzhZH0sSOsGrL3cwx/STSSSvUAjT4fmn2CGvO34=;
	b=kR9Oy21nSLtkExlnDdGgqWnxj2tiCdW+UcyFIvg54ibizn/YxCZIX2TjGyNMGIW8
	rjSx8VZYXvF9ovOeRh0bqhcyy/wLS44+nu7Fdf4y0Yp9fjrb76acydJ0e6969LOfoie
	1aoLVRBR3DIFRzpDz/MlCLEoQPJzFGEWjWkebGeg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659738052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vaf3jzhZH0sSOsGrL3cwx/STSSSvUAjT4fmn2CGvO34=;
	b=XVRvt7nbtAL4mAu/a+7e/M/1RPlW1TCtBVbiocmcadbQjwEwwgoXXsLk/5wL2Exg
	ZjfNcMW+j1FnZRr81dXKwbXE1r5XFacx44W+ugLBbG0/De7n7rG580LDxEhDSgtHqmy
	NfGXUaK71/2n+k/UgAPigoq8rI9AfXYXBWO/6rag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827018d7d0-75aac9d4-8ef0-401a-aa10-5f5bd489e684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12b94f0b7d2f5d2bf8541329172bbda6d5793491ff992b95df9aa3545bd25738
Date: Fri, 5 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659738052
