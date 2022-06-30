Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D3FA35
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656572812;
	h=To:Subject:From:Message-Id:Date;
	bh=9qygCHhfXqVwkNfN0MNnO0nejaAsIXBP1adGfZK5hKg=;
	b=ZZifTUV908voqW2ObkjG4Hi8a8P5WwECb/YZhxQZHf7WRPYH7cQ6vI4Eh1xjDw12
	gezeob0reQOrBeiIfonO1t19J09pYvo/AF53q2iI5f+DinTvlLPz6U2wohclW3heflw
	2Ic1v4EpdzITQIHED+6jKkg+uKUO0vTe0f5u7JM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656572812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9qygCHhfXqVwkNfN0MNnO0nejaAsIXBP1adGfZK5hKg=;
	b=bGldfXQzzSNO0Z2kLKcieBi+jKoRp058Q+Wm2akMgtjUhLEkG7bsVcq3UuVRqQqJ
	6JBZuVFwHT3vuWqU8Z48+lNjzB6nTaW4II5/kgZBRVV3cxdkpFvyjMgfZC4D7LOM0pu
	Cc314GGeATYnvwSvD+u+7PkmmAWZUnVPbk9Dqjgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b36f1bf8-f9bccdac-3503-4a1e-865f-9babb8562816-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4463c88e255d9719b9ac4b04a702d038aa542dbd54acb78cd52cb48e705e10a0
Date: Thu, 30 Jun 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656572812
