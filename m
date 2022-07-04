Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293F046A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656944212;
	h=To:Subject:From:Message-Id:Date;
	bh=D+XSV7i2xdoqMFLDKdKLcSeMZ08ynKPPpD+6MRFywc4=;
	b=lSaNXsEkXINbGcjV2F/627+yD71ajgGZTggQe2Iva+RZUCHOgYhzYXZz2v6hFIIn
	NsHzBExfUZ5UgQ1GU4uUipYfWYRMHqce0scXb+NIZHSQ43PftoSwosBD0TjKphjkAzr
	0six+lduqIvLFOkoIrWaF462V6TQINksYuzjah4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656944212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D+XSV7i2xdoqMFLDKdKLcSeMZ08ynKPPpD+6MRFywc4=;
	b=kcCXz36y7IRlVjXBTG3Y+AeMVnjev7caf7QZkJO8yPsluXH/y6s3vN+Q82orbBMu
	IxkpaWeoshGiluh2pg5BObJkkgN6fRR2y3eTU7vcixSYCGftYoyAt/Iz053ySlIiv7k
	/ORmKUx1ia7n0l+6LHW2TpvQ+4cmW0J7j+kYQfcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c992396e-bfa59835-4900-4cd1-9dd8-b9ddfb11ffa1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7c0da6138b3f0a0227c23ff0be7f71e5cc7522585f71b51846ae9aa5ef16384
Date: Mon, 4 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656944212
