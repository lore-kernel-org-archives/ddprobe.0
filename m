Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3723FF1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659219653;
	h=To:Subject:From:Message-Id:Date;
	bh=a9vwxYlID0Kc7Yc2FoUIrKhyR2HBPcwoiXxCuoKlzDE=;
	b=GUXlwB1sd0q/TWYQCG3yjTJgxASz1cLaLmHUGWJbi5OtT2kEyb/wF9cZeDcAXfp8
	6gDPtyfYYdBJiK/IDmRLGyIUV+ia42O/+HOH4OvhxvrTuXm0WYMnOmy5YfDkr6E+r4a
	HEWINGHeVmJoKcTJua0EWt7KAwg8tybM00RB2iy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659219653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a9vwxYlID0Kc7Yc2FoUIrKhyR2HBPcwoiXxCuoKlzDE=;
	b=ZfP8Tj8fRD7XtV9G0X0iQuvcEajGa5bBF8gIrL9gn/wGz0B9NhS1+tZ02MTGJRSX
	/TCHiy+HqQqaMJuvnF7GFUrUZWCN3a7GzXHb9OrTbTIGI5PUBXZmXdS4RyBJYTo80Ht
	CSDY29vSFx+Jd7I1valWT2ieEr0p7SenT7MLXego=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825132b009-c2fa4903-fe10-4091-bce1-4e9933d99e0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58f235d15f62139d4617fc8fa92fa24b1ccc14c241218e6b767f5d3d5be67a21
Date: Sat, 30 Jul 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659219652
