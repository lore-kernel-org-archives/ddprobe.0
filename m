Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728D17A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646724384;
	h=To:Subject:From:Message-Id:Date;
	bh=iq6Fm/F1AbdtO9zgBj7BAXYPFnl8QyvLlFN0yIluKVI=;
	b=JLIzQANvs+Z1WLYf2cy3kp/0hDv1XAb4LXAIQJqwqMy/V3Q1EgQhqcWTjt6j0+L3
	u0qKigvIFl7t0i0SowGq5sMbPDKDkdLD4j1qe8zrTBGjjDaiT8zctcIc91VNYUGCov/
	a81k3xawrPJUvKl5qMKt/7DZVxfzwl9Rv7EphdYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646724384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iq6Fm/F1AbdtO9zgBj7BAXYPFnl8QyvLlFN0yIluKVI=;
	b=TfIRv+QKBPJNdYXHAjB6zpdSk18BCFBc9jvtdHrxUud6Ay2+iuP93XCqTfvJPquD
	U/aTFqp2N6CT7nfqv2Wy6wgurekiklYWg4y0h2c9yo2aLCTGnVxVYj3CspD+KNNnJIR
	+RoKA0BU2zitV+kv7B3apO+6obRBTRFo84qtMy/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f686c0809-c700624b-e03d-403d-b8aa-2397971a5322-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af496e05cbc4a675b4792b489871d1361c61ad483c8711b11d32ddbaf033df9e
Date: Tue, 8 Mar 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646724384
