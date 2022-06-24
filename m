Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE17833C1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656085012;
	h=To:Subject:From:Message-Id:Date;
	bh=0cNMhCO0JSs9FlEMUUcf9yPZDPG/b4KNiT/+txhkFmU=;
	b=A4GyYuIqFXsrUYpHlIzWeSiZ1a44vjC/HWsKCbsle2TNdmxwBvTf7G3mITgg2JfL
	GSMCw6Q4LSzvycJNNehQ8AGonNgNg9sd0+hIJx1HYEJiEwkpy70L1IhVGaF0SrMVpHi
	xaFAWOFcOa0yABJlxYLvyNgiBZlUszDLeWhJGZos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656085012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0cNMhCO0JSs9FlEMUUcf9yPZDPG/b4KNiT/+txhkFmU=;
	b=Ob3MGJTOrJZpCvEAWWqZvblJHqcxXRwS4Zr6STIy7ges5rZNxDS9bGpJoYanFwJV
	BP15BgfPLAMJAY6fNy+7jBsTCcjfHvrzEvqa8rCGxBKn5Rs0KpWufQ0uenuyZzdKC1m
	RPzcLjLUO9wkL3myHi+rUo+JTQ5ayfGeFQxw6Ahs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181965bdf5b-53dd56bd-edde-4d29-8e58-ae6055c85edd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6fe56f409905ffd8901457ce99b732d6bbcd6994a1a88d1bfaecaa5696bb2e1
Date: Fri, 24 Jun 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656085012
