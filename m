Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350C37B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657427812;
	h=To:Subject:From:Message-Id:Date;
	bh=9S1ZAq1bjYZperUXGiiei8qShiBu2mxYI5d/E/+D0LA=;
	b=dzE89mBb4nHGXXpsKwADE5BdezyWqsxON0+F7WctemHJJmAsHgjcohIsrV6E8g7r
	D16YpuatA4zmfpkfUL8yqPIOLxfo7s9hKjX1sZRlnNITSxubhiBSX1U7EtpFBoxp1RN
	oRum+YVj/TXuOlw+gH42cBM8K9x2kVzm4zmdQTPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657427812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9S1ZAq1bjYZperUXGiiei8qShiBu2mxYI5d/E/+D0LA=;
	b=js8kBeJQCGijqVNMHxU1f0zrmQw6V9dAeLDaBPJf8fBkBlCSWFD06/DrZ5e+jCty
	gU0H2yT6Kg4vRiSdkHoXP+jgSn0xOJUN+iPctgWt357vPQZCv4BqQdw2ipQj/dKpzcP
	jPTQVVd/4HGfp7sCSw9O0ZzNlpQFjZ+5HXV47Buc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e6655ff4-f87a8b75-0cb9-4266-81c2-e87b23764733-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c77035ad6ac1cda0cf7775bd9347765d906505f7667fc65d2f6bf15263ffb556
Date: Sun, 10 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657427812
