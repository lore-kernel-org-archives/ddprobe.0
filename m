Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F357C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 23:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653694739;
	h=To:Subject:From:Message-Id:Date;
	bh=DSPy/bK5suShAUjNC9r/zqeiibbMkrF3DOOWBynf5iY=;
	b=WN/XVUETmeQUoiyc47gJ1iznrPTKpRqgIC+Ox7UACKRLLWUK3xEdl1mv7p16WkXq
	4g2f5lFFYsuGhaE/nReyOsEK4tNByW3hekTXpsqwMoE94ouRY8oRuI08IozJO7wJVm2
	ngXzmReN2WKjPZEYJbR2c4vwgomwU2Z82V0QP4v4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653694739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DSPy/bK5suShAUjNC9r/zqeiibbMkrF3DOOWBynf5iY=;
	b=R8tD7ftAOz7Gh6ERIakp3+vWjiyaCKz/fDiakuP6XjGfN+T20WN1L0AfZ6xJpbl+
	M4t0B1auwDHX74oMkBz6owX663fGb0lkqtdGnBBUDnAGo92XlYXHIGS/+JCWyYuLDUY
	YvsjWtKZHDyvJgeM4LgqJyFtgoAOeKqf5gTyWYEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107e333d2-78c4a85b-18a0-4dec-9abb-8d06cc862a57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b2d9c9ab53314564d0e8e5078959433b1f4352448a67bcc55648f669b486dc2
Date: Fri, 27 May 2022 23:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653694739
