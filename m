Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAB44420
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657561012;
	h=To:Subject:From:Message-Id:Date;
	bh=ERFHX9Xqi2ljwItuSN0ce4cceN8uBZOtx3PiG6kWXsc=;
	b=WR6HC+iLSJIxQKgaWMpS+NNbQWyRQa7H4sPVZT4ZxnqgA9kpeHPs8jGa2i0RrHxE
	m6FRGZP6+k0F4gGrYhc/h2ZN3meyoM0Uuohekg6I+4BG3E9oJJXdOnulbD3YFvC9Tpu
	YUb97DGWa2TPBnYwnVD6ubNKvh0XRpctf4jC0Kp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657561012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ERFHX9Xqi2ljwItuSN0ce4cceN8uBZOtx3PiG6kWXsc=;
	b=bkVXttg+uQ7nwnxMZfjdRhybUMrEV7IF9dKhsbezqSr/0dvYiIMkhAjRue95yQ5I
	cUn6+D5dNOt+ioeRayv7WpKZu8X8+KcAkcp+rr+CVjjNJrc/IHwSun5A42EabOoB6qS
	chR8F+Q6/6Z1TXk9s45Eqw1RBAQc1PR4DsHc9IGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee55d8a7-e9ec2468-7c4a-44ec-b3e6-172c0e6e81c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f18cd08a3538840ec33657d2af3614e462c7472a1c13e7aa5011de29498281f4
Date: Mon, 11 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657561012
