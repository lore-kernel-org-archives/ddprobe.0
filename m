Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000C433C0
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 22:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650147418;
	h=To:Subject:From:Message-Id:Date;
	bh=ShguTRzw3PrmnVVShbNTdRsQBTqMQ9JtGjsqWXvNVbk=;
	b=O2EugSecsAv4oAo68nxG5Fxicz4MLrSMoYErfQ+vtNdAPeKxCIJ7GPLAyouRyBnj
	3msCCFDhpE1jBagT8kVkzjrX/cwLf9ZluhTbse5hoWojfKed9+q2hJNj2REpbgilujF
	aHt/SJDzfewAiE4MBiRw8seUMm8yxRFLfGa+jrj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650147418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ShguTRzw3PrmnVVShbNTdRsQBTqMQ9JtGjsqWXvNVbk=;
	b=NVGyplj4SCPFnRGujfnCDwsmjricBNVvNnV3F759VuVLp9pfa6KsfxvNU1yGnot2
	ifLGZ4oGRnn9CUaPzd2sFSxGjeO6eHGjZG6Tkb+AvoHklwM7IG+j0ngJXOWO2pJ5MzT
	Wki+TmtRZzcVKzmwDkAPavuuyhVFL2r7tuKVsg2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180347360ae-a192a1ef-4a6c-4146-a218-62aa423bbc50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd983f4eea65512a173cd7361412e02d3c43227c0b24f23c2b993b689e4320f9
Date: Sat, 16 Apr 2022 22:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650147418
