Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CC417D2
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 04:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651553878;
	h=To:Subject:From:Message-Id:Date;
	bh=8dOVy5z57o5S6ZWe0tJ1tMnnzkpuIbhDSYXMKn14nT4=;
	b=f45KBV5lU+apwNXqM+bh6xkRKrCocDTaRb42HbKRPz1ZUv+uStFo8U3SEF5nRK9w
	0uBZz0/q611dTbJNukYqERSmnQfi8PcilHcYFuINlV7wqtjFANs5SK6kGfO/e2lCunY
	BQHkESr7CTLxQ+JBuuYA3jOq/GCo/Sylxl/lBvsY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651553878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8dOVy5z57o5S6ZWe0tJ1tMnnzkpuIbhDSYXMKn14nT4=;
	b=ZNHczf6DOHxagPg1ZDj1FaOW2mSjU8oLzJEuQu2p9l7hU661C2yMxtN1F67mWiHe
	abJLc9DvracqEz0dtlcx2MWF3PhQS/5O9ZCSIxfvY5Be+loa9zO7qjaoC1BzyEiMXN7
	2q2n+UcNWC89foXygLwlbJEw9vlp8efgVKKzyNHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018088484114-fac4d9b7-7288-4bdd-aa14-a30e83f469b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5eab00ea067923825fc7e1fdd179949f3fe759db9ce85a42fb2f48fdb84d633a
Date: Tue, 3 May 2022 04:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651553878
