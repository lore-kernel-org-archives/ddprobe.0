Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16822F24
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 11:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653134279;
	h=To:Subject:From:Message-Id:Date;
	bh=/bdq/kGUC14MpJ/Wqyt6yOskHiASr9qeRTFQzUoLTTg=;
	b=e9WpIqetY7Wp9vAE/DZciFPBCwRuEfrpouivLWmRIr0emMgWHsFJNAAPhTVXNBVf
	Dbja54lEiMmPiz1Lm56ulCKjfhV2QGIcVLL6hY+ttzSP0VDrHslRL0q0JiDMSKG6Nnw
	kvqzB3YVKHeW4PAV9tBXG2ILhi9eYWUaB7SgUsAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653134279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/bdq/kGUC14MpJ/Wqyt6yOskHiASr9qeRTFQzUoLTTg=;
	b=AUrzE1AcKSwQIoHMDivJqcRzQn0WX89s5+1cXBqXCe28/q1LqiJQwJ27lwQl2kjX
	89j8WBCKzaNlJwrsBh1DEFcVUqF7+MxWzelfkV0ig6os2DbjTsyEBu24F3lW8b+1O0Y
	7eYWE0NuWrbTSaufuZmpeYn0KK0EPHXGf+VBU0yI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e67b423a-467ddbdf-5bab-49be-938b-ab56095da14a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a931d9a2011bf14c3292d4ede1f9193576d5a45b16c21efae1fe3a08fabad44
Date: Sat, 21 May 2022 11:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653134279
