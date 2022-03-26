Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769E27E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 12:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648296598;
	h=To:Subject:From:Message-Id:Date;
	bh=8z4AhiPvwTN1r4UH0d3wHzfo26CEEfUAPz6kfCyx/4U=;
	b=DkSavkW/gv75VQI4rwQ1AaxEARYcawDFClvhEguA1WtVbI3QkygFbUVqnBmap4dW
	ZQmeFufoHeKc34mSmVSXv1nU4skhqCVNJQ3Kvk3qmUcvK5DWWHl47UlfZFZe18xp28z
	+lVsCNdNzAOW6i7DrsGFfwvlSveyHtFh0L+sUg50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648296598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8z4AhiPvwTN1r4UH0d3wHzfo26CEEfUAPz6kfCyx/4U=;
	b=joSVXVMOydGyhIi4ErIKjYbXRXZt1rHghlYbAPSoBnEuUkm473ts5Q7PQUq699Vh
	ADvtQquBLXs5iZomLFc6InIRGH1+YQP2L0Ke4AOOAKBJQIb1DcNVrSJd4cbRSTR0FtU
	X42O4CcAKOpwcLHmvlTt4AYY2A9AStWObCqhJSvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc6221b40-67412c76-cbd0-4ba9-9007-f7ba3d1e327b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3edc16fe85ea74b54bf98287ca3c1225f5b8ff202dbf7204cbe4c29edfb03f62
Date: Sat, 26 Mar 2022 12:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648296598
