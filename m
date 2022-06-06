Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27157E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 12:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654519859;
	h=To:Subject:From:Message-Id:Date;
	bh=JbMB3lAHNX6Fb0kCq+5PhFNanq8JFDqeLOuFNEHV4f4=;
	b=SoyfbTY2pWN3T3skgX9dbQAvCBEMyUU9uvCRb8GO2pGJKEt3zj3twEVlrTPj65Nk
	gHTbKsRfIhrPBOwHpfzcxAGtXSq4RRWKYAClWqGDoHwH63vTtzPVJb9/qDQ5PtX8OJN
	9GTqp1+UMJYw46AC0xPDyc61QxxQiG8zCa3dsjh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654519859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JbMB3lAHNX6Fb0kCq+5PhFNanq8JFDqeLOuFNEHV4f4=;
	b=QejASs2EAoBsHESPpwjEUP8ivwhePbiZKJIIk1CxpH4BjSXM456YkEptpH/A+Yzv
	1A7J47+LFFhAflknV7hsuOwHd/VVDXk386XLrfG4XR53ZvwDrxIEG5+jeB9fdEiqCRy
	FdvVZ2opRte7dg6pR5YM7nlMAIWqLM4PGD7zsYCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018139118838-e919dc18-dcb9-4722-9913-c6be349c094e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9657b7ccc85cc1984affbb8009aeb1b80f1c65ba1249bfefe37d615f375da247
Date: Mon, 6 Jun 2022 12:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654519859
