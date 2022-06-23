Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA651FA6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655991412;
	h=To:Subject:From:Message-Id:Date;
	bh=gImFJDnVBH07y4xh4FVVdmnv4ZZX2CoMX97QFBqPAig=;
	b=YabiK/Tk067hJGybdnTx4a9eyANiq30KDw29rFKIu/vvXvrmLtVQc4r9zDBhtQSS
	7nfHMrlRTsn2s/6WSe3M+zrhH4sEhXYTMwZNDvomSQaVKJkGl90EUEgP2GtSOMrdDgM
	/a1CD8kGc3zn/mAYIRc/OzGt3+paWDJaBn60NGh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655991412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gImFJDnVBH07y4xh4FVVdmnv4ZZX2CoMX97QFBqPAig=;
	b=Rt6Yo3b5sGkX548mo+5XCHHCtUwABHP+iiiV98J7ZJl8lAUburAC2bD9t4jXBISu
	fGUxYNujbhtcH21QYs1O4tw+RYtiavlja+5rJYvaHZc7V0CtKC6d64XaRzXok4kFk8D
	qj1BWNo1KCPIBYaJLmlq33J2ztMGgrUVZR7dB/YA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018190c7a66a-240ae1ef-7c5c-415b-834a-7e4b858e6c02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2edf919a19f94c3053be99f0d3ce9e757b79556ec21fb72136230c972a8aa1a0
Date: Thu, 23 Jun 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655991412
