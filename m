Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F2020F7
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 05:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653196259;
	h=To:Subject:From:Message-Id:Date;
	bh=gmHP8AlhKjOFvvoTDyUM7Yzj5uEod3BSz4vyq/wLN8M=;
	b=N2JTS/fltWocDpZUIsaN8+iU6r0c264xmxYmAwoZGvlBkKrP2YOc+BeKV6mPH2lu
	K3hPCfHkWs9Z9kxz3x/t+CvxiqwC9QEFz8Kbb7BAaWPH0v8iw7qCNy2l9Hxi5Gt5oDX
	7Hb3UEFVzKcJ8STXWTLuN3e/ZubHMkBLVATksh8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653196259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gmHP8AlhKjOFvvoTDyUM7Yzj5uEod3BSz4vyq/wLN8M=;
	b=OJKQHF43bDE12ewg+Oe+3yra8vRC2tJidjZYImoj+FzkqITH1wS7q435VlWbylBO
	krQh1AWqHo6QgHXEnqupGrY/Vi1yKQvVy2nxPFvxLQkru8WUBnt3SjRNSVUb1ErJILU
	Yx3lIpfCsXqabdywEBXFOMkvHhGdfrPGWJu0yB8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ea2d0036-f573954a-e87e-4117-84c1-3510f58c8203-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a39e1098e9da8afb90a2bbc4a57a26e03b15d939e2d78b51b87e0863e7cc2b26
Date: Sun, 22 May 2022 05:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653196259
