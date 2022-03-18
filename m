Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A504C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647612984;
	h=To:Subject:From:Message-Id:Date;
	bh=3aig+yJqF0Gge0bGJS3QKf9dZD4/c2I6Yo/8lvrlVyM=;
	b=TKDZu2FXza7x8apbMxQnXHtnhO8pmcionTYrzgGG336xA5cABOO2Byj2xz9xTAGQ
	ojcfdrdZG/hrqy768v4TVJj1/mLGObyOB9Vg/ftH+lmwaxfAKUxNrBsQUAnvv6Ap3F3
	+LjB9N2vXo9PfC8Y2Qe94FozqxaVyB+Cb3Zvo5SY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647612984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3aig+yJqF0Gge0bGJS3QKf9dZD4/c2I6Yo/8lvrlVyM=;
	b=HDA4lXCTtj6hn0t1nGVZITqFP9eGztZiCJ4ZqHKV+HPuMJ2v3hV9AtfwTlUnEbS8
	9sL0G8RCQM2MA+ChZrvugGxvH/s310nTP/jFI/Qya7upUKDgzPPSspbnaaoX/Sk8nR7
	IEVh8QIQz4ylZBbwVmjyzZm2yInpM15FJCo25x7w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d62fda3-189c2368-9624-44b6-a730-6c7a5815a3a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 383faa396fc661e8dd4d1620bef7481b987c2bececb32654b58e040f0e973834
Date: Fri, 18 Mar 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647612984
