Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0844C7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 22:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656975412;
	h=To:Subject:From:Message-Id:Date;
	bh=kXC0LzK8f52qGQFpSLfEGg6iuX3a+bF/jGQXUFowbLA=;
	b=Zs+341kayVSlwn6/yNdR3MhlGd8D4UEX+rGl3qSOe4y5gAOYdJ1VqrsD5/yi1ybG
	fyXsJjdOnvqXPYdffjHqVYq81CZqrC9EWJZtMKB+JbIRT7gNhe1F6Ipj0jx5FYIJwB+
	4yuoqIsDZjikoV7uFIbMjJLrQJjJ5Ae0ElZI1hcA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656975412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kXC0LzK8f52qGQFpSLfEGg6iuX3a+bF/jGQXUFowbLA=;
	b=eZGZ7HqEQku6OkYPizziB8afNRjm2uxpkztajf+kPDbYIc5/dhXHGeQdRijDPE/8
	+bljrNP4MErAfYgIzupV2uKssePbBMQqBoZOrU9v7IS1b3IMT5c2zG8P2XxiOyvqLVR
	n2JP+YeFCz2koheanAperoLrbamEu7lVLKVj5BZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb6e4c23-32e80a06-1866-482f-b69e-7aecd2b4d90f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14a8deb7f67a2d0665e6b238c2a82be7a32079c5d37d48416160becb3e5d18b4
Date: Mon, 4 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656975412
