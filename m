Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D057B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656523012;
	h=To:Subject:From:Message-Id:Date;
	bh=mITxOYiCoiI4FJN6m3LaAhE9WvlqUZDqJQIQbR5zhak=;
	b=a46RfoP4tPSDVh8wYXug3BMziutszGtmQIzy7y1z2iVbfnT5q2bXqt6NrqoJb+lD
	qF8U0vz3STPcY3pNu0aevx0cH8kMsSsp9U4wRX+cc8pCUw9hZUPpqjLtUYIqgRbB+LX
	inAAReVi0FXDojbUtCDxXmBr5ZRu0Hqx4TXO3WUQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656523012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mITxOYiCoiI4FJN6m3LaAhE9WvlqUZDqJQIQbR5zhak=;
	b=N8vht+PD0wJgzBkWWrJ38weY/aAeL+eiM3EnadiXeh6GBC4sqqS/mH6avDKv5qqr
	uvRCPXOG8UCf860uyGxLr2F3b2Y5Hbco6MoXQDPgpXmFcS8jHyeGEAR2mOhx0cfXDwN
	ueFW0HA8kWk7jInJA+6XA85n4hMluegyGL4+Tf3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b07738a3-ef4ee351-6dbe-46db-8743-2997803d7d0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 525547f1d650bed1c231b9d79a66a622299b36b36abb15375f89a313c5ebbea2
Date: Wed, 29 Jun 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656523012
