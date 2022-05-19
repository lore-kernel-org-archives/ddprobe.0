Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D8933C3
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 23:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653003599;
	h=To:Subject:From:Message-Id:Date;
	bh=afP/MRGQVKgvqyNW1hYOYKWvp5unRfO7aDx4dg7rU7s=;
	b=TOBcVkQ+hADdt3GyL7g3za8CDkNvkxaAmcQGKN/j9m77nkLX11Zjs8d6V6dmPkE8
	/r5uS2kGPn+efp6cwVV9DCcNxXNE5/Ox2tOPuCSbvO7YWrYYXaR/S8qssSJC6IOHRek
	7Z2HfTV6nCn06NIQIlir8WQs/S8nA2ag9eXz60jo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653003599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=afP/MRGQVKgvqyNW1hYOYKWvp5unRfO7aDx4dg7rU7s=;
	b=DNWryepC99Ztexh7PJDkWkmro2+OFCx/VcWUXYPVch6am6PQ6u3U+mj2FDjVWxKa
	90wUHsy8r7D/PfCTHOkGBPvSnvKfyhWBf3aohrPxq4wF8FYfHLaqBU0RwoQTR0AklPa
	qd7171a7bQUZhoOKxLo4FaIDH/qouVRkBYAmOAns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180deb13d9a-28c7a2e8-f034-40da-be7e-91e49d70d866-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9179fc7a79c0f408da13dbcd374dabc8d3d3b2538de414cb7252f09125f2919a
Date: Thu, 19 May 2022 23:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653003599
