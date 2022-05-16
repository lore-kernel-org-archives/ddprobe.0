Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CDF7FF
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 05:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652677619;
	h=To:Subject:From:Message-Id:Date;
	bh=zfyw+lV0HsNQcrWU6hvQRHaB5LX9tsIo2Y2SVvHdMYs=;
	b=fKeTACftiNc3qzB9uCsfsnYDpoGFxhMJ6J2A3YirdvZ4kH26Qj9s3eUz59Zm6rkF
	/R1jlYE1RsmD0WJ6vGWVD6Fb1o5zitVCiFu+F8xTy5WOO4hyF4jKuKd/1cUUgL3rwPf
	shy8RYZVQGnJJhmoXgqmU7H4EONylUTDiSx7MbWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652677619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zfyw+lV0HsNQcrWU6hvQRHaB5LX9tsIo2Y2SVvHdMYs=;
	b=K1riDGJPhRYPNflgim3iU+cUH2SchY8L2czPbABpzsAT/XQmn6HmRSfA0t3MI2i4
	itTWodLW8yDEsn+Qf6HYijCy6E+Q9Y2fhQnJYCot/4FHmYUc58mrBzjKT6I8a25yw38
	hDNmt37UTXgP6fO10a6LZ0uUMWch4tf4/ml0kNfM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cb432e9f-02213998-82ea-4103-a31d-53580a401597-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cca3745fc5cabfe7d47f7cd534c045b199a49e4dbad3108b8650a7fecb97eb9
Date: Mon, 16 May 2022 05:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652677619
