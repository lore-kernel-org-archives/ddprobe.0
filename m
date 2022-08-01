Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6AEE7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659374453;
	h=To:Subject:From:Message-Id:Date;
	bh=BFTK6WfOd6acWCfipeZt06LhlHwb2FT+FyFtagc2RPo=;
	b=Ecw5a1EmZhOMgryR9/XqCLHe1M2UNhQ+XZC1lP6glxhrAMLaVZiOZfUV7TG4GtJf
	Z9wwxBVXll7W6Ku4SXRO5hzQ2rWy5VmFFoKFPVwFLPq3Hdx5Lmp/aU9/E4M7xmtzdAX
	eVpjisX81ClyYqgDoH5pgUhLM8QIt9HfPr3BW8+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659374453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BFTK6WfOd6acWCfipeZt06LhlHwb2FT+FyFtagc2RPo=;
	b=QcdGhzLvWld86Pi5EBdn0wXb2JIffuv1poC1xN1fFD+JDY7CrTK5mxuWKJF/jxjI
	gq2c1VRGivfKOH0LliNC08d7oCkfg5NnkBUmgRI8bhUsUPQPm16qQebkePJsJn3BylW
	2v4H5cDXQrHvqZeF4XypMdP5cioTW0VT0Ha4kSjg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825a6cbf3b-66b07b4b-97d8-4519-acde-a58b51575049-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa7c7bed1dae576233f81630a5f5464b2f10f363b5e145503ec0687eae11f670
Date: Mon, 1 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659374452
