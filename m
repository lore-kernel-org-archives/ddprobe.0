Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2302C7A
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 02:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652754119;
	h=To:Subject:From:Message-Id:Date;
	bh=yg1sS36CF208NBx5b2akmXtXsYLt3UKHpQuoUdJN/ow=;
	b=SWhpJT2ENE44mlQaZr14Av5Dh7Th5ByJo8J5tT8U9tADxQ+SU7o83mer1pwVcTjn
	+EnQXHLbagkmvN0Fiz4geGxO55GtgieeJOtQB/Eyw0H5UwoXnTKioWpoMfTnmqZRHSH
	GgbU0U5sOIbOVkxTMjIx8zxBh5rj3xdJ2cuoaz9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652754119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yg1sS36CF208NBx5b2akmXtXsYLt3UKHpQuoUdJN/ow=;
	b=U9U0YTbVVfbMXUzwun5cVishpc2XbKj3xUE6959kFUOk5VSS5HDMjFB6jzaOqhfP
	lP1Jle4+6MbiO2KWDwUpzbhjOGI5JIezn8L2EuUaiUoq2WhbGYwYoyt9/FpDZWrKpmM
	7KB7rR/YUFx0q/uF3E4cpcE4v6U/+tv7yqqx+jWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cfd27a95-462e4890-ae76-4d01-a57d-8d8ab56c13a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51c65dc50cd4fd7a89b8ff338a7a23daff07fecdf9c52d35bb922fcb3985158c
Date: Tue, 17 May 2022 02:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652754119
