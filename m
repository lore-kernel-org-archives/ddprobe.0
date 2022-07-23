Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87FF7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 00:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658534812;
	h=To:Subject:From:Message-Id:Date;
	bh=b7N6U4whI4lLth6Ag4BmzZx6jMjlYgDRjYkZBJ33518=;
	b=PC814SCnNtlgyO5k0I03RcrW/V7VNlOo0endZ5gLY2wRKuS57L1DH1BbjVua+WRF
	phKr5qPfBiCn/rNRfCXWgv9PyLc8zfTS73rAh2f/I7IjcXvoD+JqcwXdHl9Ypo89yU6
	f40cd74UIV0zmGZ3uUbFPuNrn04bhwX93aypwZLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658534812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b7N6U4whI4lLth6Ag4BmzZx6jMjlYgDRjYkZBJ33518=;
	b=IjvVH//f4ZVsQMC1SKgwAM0UzRk0a+2f51u99yxZYU1OfrG8XbtotB0wSbOI55VD
	Ns9ITPImU+69Be3JboCRcNla4FCGX4FSakVlqCGHHXd7mUoUm6R/3mwuM32GAq0FS0g
	JXmkjPAL23HwKlnQ6SaXa+ebRJWapTl9ea93zN64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822860da7d-03c62c23-c846-43ff-bbb4-b9f14abae31b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77f16c4d85e1c69f41c9cc6ae0dd5bd6df7c2428cc9bf8b336167b3c8826ecc5
Date: Sat, 23 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658534812
