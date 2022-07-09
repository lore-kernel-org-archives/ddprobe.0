Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF70A4F
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657352212;
	h=To:Subject:From:Message-Id:Date;
	bh=HMrO1IQza+WZ+ThyFyz3uayQrHzfmyb4P29ZSpW8fIg=;
	b=ST+H25Zy2n1CDZ4k6jv19/cX/IVruOGoTv97t6ulK8kzwX7iEdw6WpVn9qtclgLJ
	QYUd/fOPwxLfBqpjTRU6LU4INhtlzMlFdUKoLaX4Z1zrfj9CcV0mE5rkb65AkCkFjTN
	TTYxkO8+eYLw4gnfrrOKzVUN69Fh9ric0I0PED6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657352212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HMrO1IQza+WZ+ThyFyz3uayQrHzfmyb4P29ZSpW8fIg=;
	b=M8+Ek5YY7+w9Wulz2KYC/IGYmx2ROfFLz3V7QcCT+pWvrTJxgNpFBJv/oDEtebvq
	jMYrVZcSGl52LNZDzJvWvIUxGRw0Yvo5hs0ZP2C4Hl4Ougd5xLfoYqpudchSWOU/A7w
	IreuYDQVQrrWfUCCLAoCo8W1ZViInMJjCDKG1Y8o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1e3cf97-0e17ea0d-f1b8-4893-a6fd-e0c36800786e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0749bdb029f33295552c73adf86fd39ddfc0c86a98d3197efa7bc902eb5f45c0
Date: Sat, 9 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657352212
