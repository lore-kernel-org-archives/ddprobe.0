Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E3F84C94
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 17:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655832059;
	h=To:Subject:From:Message-Id:Date;
	bh=pv8kDEyY3ZOBmGAKdIsptKCNCpLIJApc1y6Z2CaEtJI=;
	b=B7BjYgYtF+VLIFNDc/LP2BpVVhig42lIJoya6qzJER2KayUFXiz6I6Y+/uzTSdCp
	Zkap/IeoFFSH8c8vxGSn3cLEeY+V3B1n7DPndvpZDiAYKHXsF8BllEfr9T52IRD17Ki
	ed84QdRsnrzT3YTsqjzMNa+qdIey+cs9hztqE1vE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655832059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pv8kDEyY3ZOBmGAKdIsptKCNCpLIJApc1y6Z2CaEtJI=;
	b=gDB3lg9Xk/8aSRIOxyrjfWDS9GvGHJVVzyvqfWR6H2BpwOv3mZT+ZTaMVUFcoGv9
	6VjlWanpDu5RcetBo8B7djHD7i5MQgpiRVIyR+7uL4Q2s+x6TYIDw240HQOqikUuj5R
	8ZV0jcw8tBGHfQ3TfToNZWjBABwCsu1WJZXpt4RI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018187481da5-680bdf7e-6638-422e-b07d-a8976a6fab8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f74c5aeb465218b14ce05e02c1a64f7a678686ffcef69b63e5ea757a29f85069
Date: Tue, 21 Jun 2022 17:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655832059
