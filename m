Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA2B7FF
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 04:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651898578;
	h=To:Subject:From:Message-Id:Date;
	bh=S1M1IhoTXRhge/X43EvtcUvuqfsvlej9qitW1Fs4mnA=;
	b=b5Gl5yWRZeikpJXH4GMTztcKBt860/Giz3qB/2xPRK35eTQcFuEqbQajdXK8t3Yx
	Gbbz4X2RLio5JAp14cVKjqVAVMhL4soqIRaEWeP/qiA/MrX6EOYxqVSFBPqgHhaEP/8
	nyoJbx0XzdBfPEFaV8daP494nYbVFPF1fSw4ohgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651898578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S1M1IhoTXRhge/X43EvtcUvuqfsvlej9qitW1Fs4mnA=;
	b=bd6wYO1zBeBJIPHoslJ53GDNF8koI9dd/x3lgSjBibTQYLHzhGhhfY4BI3nYXOIH
	1N6cw6jx41x9qxWbU9nwvMqVyO7SaDtu4HC4TsFAi0qinlGg/LurLx5RArji+0C6AaJ
	YXnQbGGgWFPt3Xgzil3ce50yAXZnyBxORSuD3tjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809cd3f55b-e311d3a2-c852-4fa8-8a5d-6aaa2106ce38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fedf0560e2e7da82f21808643520fa41d7d75d3980faccade422f2856c82d766
Date: Sat, 7 May 2022 04:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651898578
