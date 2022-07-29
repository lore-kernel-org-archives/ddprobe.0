Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD1A7A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659070252;
	h=To:Subject:From:Message-Id:Date;
	bh=OBvMqIzq6aIxLfY7ue4JLSCSXbggiPzofNAdqCv3w0k=;
	b=IJYE8FBzI2g/tDgeFJJyrz1ZZyfvq+6C16+vv6psygDwCEeIOO9nnv5jnpB9B9GK
	YB1+uqRLssj3yzEhdusbk8h8fYXgmIq1AssxYNkVteHSuvCPAYe40KUlJZgrMP7VA9P
	lIGT/SgH9U7S1EYAmp0zVNAraN9MUHllgAnThOa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659070252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OBvMqIzq6aIxLfY7ue4JLSCSXbggiPzofNAdqCv3w0k=;
	b=DSeUE4wLOaxp8ywNcqOvvA178iNqnYL7e6TxpL3WMJGaUU+iecvRJi3s5cspSzby
	KonKfXiHZ8VGUgoR/gJOuofwSeGZl97ie4O4zNh1abysfv2LlKBUrlPN2XUMqYAkIzV
	WQIaVmGtt9/rXVY4oC4bkia/1L8j+UqnKlmh2v2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182484b062f-50dfb33a-c930-4bda-b7b4-bdb25c059c08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c03657d79c0f685f25c81e7be2fa7a0e44abc2a97cc58a81aa1b1cad6203c5fc
Date: Fri, 29 Jul 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659070252
