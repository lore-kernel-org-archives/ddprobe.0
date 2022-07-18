Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBB9EA6
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658139412;
	h=To:Subject:From:Message-Id:Date;
	bh=+H3uwyptDJGsOTfFVeP1w2lFEj78mr6ckStQiSxoRkw=;
	b=aQIdqo7swNNm+dCZMBvPtMaBeTnolfDALveiyBT2Bu3/m01tXkNwIRgoefb5aQxN
	tznvG41N0Pa2vUI94IKDS8nQnuHREbaFZFRBx2wspC16O1sJu+WQDceAKJxnQuERCBE
	1AKQ1QdckV+bixtQKVyGs6VnS01wvfr96RVaJL/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658139412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+H3uwyptDJGsOTfFVeP1w2lFEj78mr6ckStQiSxoRkw=;
	b=Bqg6K6Zqxk8f3PeNGNOcfqwrUAMEzLN0fBbJoxFpiZn3wYxDZ4M/tSy4G0DLS5/p
	uF+MNPz9/qIlEC+uAi6Ag6RZjqXClSeTNxrtAwHKX9aZS3HzZuA6hlxvBTqtmeMKbOV
	c5prVGrwINfoUCfAS3Ola+YUoRsDjHuNgriSeMn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018210cf8757-a313e67b-3bf3-4d3c-b294-3494f5639dc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74ed5f63cfac495ce222c0a002650a2a023016db322cb6f59c8aa307ac8a787b
Date: Mon, 18 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658139412
