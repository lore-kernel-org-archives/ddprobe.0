Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA361FBB
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 01:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651368478;
	h=To:Subject:From:Message-Id:Date;
	bh=XluFEJBByXGhbDy2inu0eEOFLbLeluBUFCTTQZ2aoKs=;
	b=eo2uiOZ9Ifzb0y5At3j9WOGhfKVKkMliPcCSWxtpWxpEOVRcyiPM/DiKpfsB0Kqs
	jYcysELmsY0ySxDfN1jHd8UA4V2L07KvU55R2D4HhjYhM8vLoDJp17x045FWRLh15r0
	w9dBxS39kucKCVfUxj9nfZ3X0g2RRW0mXobiZ2lk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651368478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XluFEJBByXGhbDy2inu0eEOFLbLeluBUFCTTQZ2aoKs=;
	b=EfgW320e+ECku5xUccLlBB0UjJM0FXyNZs6GAFagQRv3ab4zbsr3iWdHujvGvsxc
	ZJ1cF0n7gd+CSg3l77+AK2jjHJ47IF/dm/0tPvlwFA3o4kXi0coorN1VE6z2KjYG6rM
	tqrIguB9PXyjekB35H+kYnmP9qRFnmUdaWoIrQ0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807d3b462e-51ffd593-4749-4c90-93e5-b3f275381814-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22392c0fd3670087216159bbfeb588f6b824425711b845f708f74172c062e507
Date: Sun, 1 May 2022 01:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651368478
