Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D1E4ABB
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 22:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647557785;
	h=To:Subject:From:Message-Id:Date;
	bh=MdUr9Uso+gUsD0d1wp2Mzu5yeizHt9WyXE8vNLNQGwI=;
	b=d3DKckrCd1Ih9PtNp9a3PDT5/Hfdg6KUGjSMZfsTtYNBlsrXxYqa+cjXpU+2U4ml
	VSYKuiQfII3CnONEJ98NMO/ifK0oTQEePnBSAuP9vOtEebblP2mAmwBdc87sobNAOAo
	htPDRNRIVKKPGfBMOyPYnpIBM3Z+zcXEmgBlza8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647557785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MdUr9Uso+gUsD0d1wp2Mzu5yeizHt9WyXE8vNLNQGwI=;
	b=UrDpc66CShqVOHJPJqiKA4eSG0ybf2QS4z+CaN8OV7xWyuEolkkVv9HdqRjHftmJ
	SoH7lsch+lTPu10jRlt892GhJUBjI+DsKUdn/SU9Hm1qBxuykBOsQKZbZti9zJLooiP
	etilfKXlG3cZHsk2Wvj/zBvrgPCCmNVoxmicmcGE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a18b4d3-ca791fde-3f30-4103-a476-4514d877b78a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5bad0b1f909fa865c07261494a9899a6c5a628c957474c1ce0dfe9d982ece89
Date: Thu, 17 Mar 2022 22:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647557784
