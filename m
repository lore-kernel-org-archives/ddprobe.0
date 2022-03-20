Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D59D20E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647747084;
	h=To:Subject:From:Message-Id:Date;
	bh=aygRVdc12RNfFybM8NGW69OuL75QAh+y8VsQ0znLf1E=;
	b=SPFJ/FgemI4PBvtOkO1B9BSYF5avEJhJfo8ChMlCwIJofHRqwL6ijRFtMRp8Hzbq
	qZETsyVZUBm4IjK6y28Wnhr0ck3HJf1S3L5m295NJSwKXEPi5mv8zT3Vu5o7YvwS+Ht
	TAXv50fZOqstiEEGd+n3LHGgZb0TAY5ch62XCMN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647747084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aygRVdc12RNfFybM8NGW69OuL75QAh+y8VsQ0znLf1E=;
	b=M5nV+1xLo0IM5rugGxOhOh3kE9YKcz4IZIc3aFB/k2uCFwR0ZCRBzJYajoJd/JlF
	wV+75Jd1w5ERDRfHKh7v0hhbhfpN4occoY3UOA/Y8z+LImvl22Og6fCzAdfy2y3Zpo5
	W/gXAtCBQuO2eFii8Wyex+mD1h9PnLN+/bP64oKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa56131a4-e0e50f41-9c30-4a85-ae05-56886f3a9709-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69acd27d71e7aeda00eb89650970eb759327cf3de08f4c0439eabce4f2586a12
Date: Sun, 20 Mar 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647747084
