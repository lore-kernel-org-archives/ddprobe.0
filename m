Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1BF33D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647781885;
	h=To:Subject:From:Message-Id:Date;
	bh=lsc1VjN5YcpZErscpUpGSsqhMxc6i+WbA53maxDORQI=;
	b=E4YUcGej+GhjddEjcGI6kj5UXXtyIsEESSNG/E5iIl7g1cMG3h0RqExNcCiEs4zd
	gj+IMz3fnByE/WWZW9yKPhBVSARi4Lm9uHpFGf8COSQnV7vgesBl4ycSlxBluj6E3sr
	O1j094m/KzkOHrewr98lpOBRiRefrwFgCKDEJiUo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647781885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lsc1VjN5YcpZErscpUpGSsqhMxc6i+WbA53maxDORQI=;
	b=ZAYdYjy90tGSIdczwCnSyq9DjUi5u5NPG1kHifDgiEQ5snA2tqRbtK0EKfWWGRhR
	/74Q6c+5ArEI5w0Z+z2Cbu97YqLSkVJD1eE/VQ4/VLabonZUtQHVqtAu9vKTKWHOgzs
	TIxI54/9FR6kn2fMtGRF/To6M2QH/sx8DLHd6afo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7743375-e849b147-6c31-4288-8eca-08a7e845914f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9df555fba13ead427e52b2c12c2565ba44a52849242aa86cd45f732523fa004b
Date: Sun, 20 Mar 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647781884
