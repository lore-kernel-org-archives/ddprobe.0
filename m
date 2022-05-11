Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2309F2F33
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 19:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652296739;
	h=To:Subject:From:Message-Id:Date;
	bh=9JH1LfOAdyfIHW41n9wlAYu5tDARkVhuOUblFl2+arI=;
	b=gI1VLIUIGFtrt1r8gMnwIkd+EXnSteXEqy9wdLv4h+JFup0uxDE0Cal2U6uV7VHy
	y/A47MQvKKPrQP8aWw7ISCCqIsPZX2GQVdQR+ZnR099GVNnk7/v+iO2U1v4XuwlZPcW
	yScdUh34WL0veE1fMRuo91MEPOI9WKWyC/9kdVjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652296739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9JH1LfOAdyfIHW41n9wlAYu5tDARkVhuOUblFl2+arI=;
	b=FFwuHmn57BhRBl8ISAxGN3azPh2uwBTjpAE4Ky6B+gNyEEj/pyQT+rwZVCKHK1aH
	LwN/9l5zJdlye/TfwF2DJjPhagJEZsBd8CHLRLBCPbJ5pI8ltOgWN82uNjGYT8uqemY
	hLKw1IKGO/3Phf4AzftOq1TD3vQn3cyYLqH4QH/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b48f6a0e-7ef88832-f191-4fa3-8f6b-ba3972fe24b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46e37318ee0cbf00ae71eb75f46b31906df38fd9dec7e5afb2066964013aefec
Date: Wed, 11 May 2022 19:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652296739
