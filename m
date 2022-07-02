Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EBA110C
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 05:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656738412;
	h=To:Subject:From:Message-Id:Date;
	bh=u2MP/KOcUhkkU0kMJG/hqqMwMOXJYDYYLojjlzUJCGI=;
	b=kt5QqiTuXa7EqcpAeqI4Y2wUp6OVa13WXx5Bc3NcfOoA+IPsXfQl42/A3x67ET1Q
	+lG/KJZr+l1Edp+VqJA3DDtZ8lUt1UG3l4pwP18glpM8KPiXyJ2JJ2cnUwYNoykarZe
	S70uM4gdhOik4Z+5+UCqd3JgtbtTC83bVpQIJS9M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656738412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u2MP/KOcUhkkU0kMJG/hqqMwMOXJYDYYLojjlzUJCGI=;
	b=YFtdCIMRnLezo/9zMzeEYBzHccZHkrCfq+6GJDKHuhWPoHbgeYo6ov2RwhNWZWZo
	J+9W0FzMFP+YIyOHHVNToJ9/wrpGQpVUHkCrOvxQJF0ciLHCOMrIcIVqNlyJObHNsRz
	zO+RjO9pJ1/S1KcMhHAXtQRuKuM5awzTu6w0SIPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bd4df6e0-7379e046-229e-496b-add6-684d15ca10ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c6442593ac794d4e92352896a6cc8646c6e819c79b1353f5cfec5576ff68dd2
Date: Sat, 2 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656738412
