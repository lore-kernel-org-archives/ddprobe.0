Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10CD18E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 06:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653116039;
	h=To:Subject:From:Message-Id:Date;
	bh=fc/wBuwdzQ1dctKN/gNakgKHWcLwbs5fzJ7N7Iasy6g=;
	b=XNA1I2Q1JySTO35mwyq2/dkLgnBoY9CFaQplH6UJ1vLaKhMYd89ibdILIe2XlLeN
	s08UAEUXb1yh+ivfil3mJUOktYkLLdtB2HZCgYWyMZsA5kM1AIQo1MN9v2x1rKRzqty
	l7kiS1KXaKa0sFu4Tsx3vrhaAT4EUoKDjjdGQ7xE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653116039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fc/wBuwdzQ1dctKN/gNakgKHWcLwbs5fzJ7N7Iasy6g=;
	b=fhojV8Y4PLgBLQpuYqiktnGM00zbbYwgIUT2WRIMUCnfEcSwHtnw4/1aHjnP/3BW
	TnhIRtIEgMDF9DWAnx48JnAkuko1Cc7uSTfZqS7pnV9+5xLawKVs7ZI5O9Xc0tOr4Er
	4NOaM9n474qljxgIg07WmScWU1jOa3D1wFVOTxz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e564f02d-7c87ef47-f3b9-47af-8c44-adb066ec3933-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8357df27ec4065975639d324210f6b9e0a2e0ef10688c566e2e38b49e243d248
Date: Sat, 21 May 2022 06:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653116039
