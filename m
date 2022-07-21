Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0712628EA
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658395612;
	h=To:Subject:From:Message-Id:Date;
	bh=/4XNpSqywxUZtvsCW5wNleoOcRmk9/oqI2TEZOCrEeM=;
	b=T36uNp4GJvmfDjmwUntU0shGNmpv2jW0mahy7kheDWXMXjzhoACdyRzvoOYbn442
	rEOf/flfGZmn1PtAx3K9lqnmm5KBIMooqN7tLNPdprGqM39n+APLz9tviVrDgPmysW8
	M0RP3HVRGQM33ArMJOjIRnSn0CqRJJTvry1eLcOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658395612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/4XNpSqywxUZtvsCW5wNleoOcRmk9/oqI2TEZOCrEeM=;
	b=TSV78kArayiM5wt8wW1Rp0ucIaNZp4KXOF0w3ZlMZBBiWghFwhWuOgg9W7uzo+7l
	j3KfIvEs8Qznc6umZsNFatFMp5ahx4aBjsMg6wOoVEjKKn7qZ3mtLWMOF/RqA12rZ+f
	xjj+prhEkPwTuiRS2bewcL6VC69Wne9x0Qkfh8dk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822014d49f-7f6ffbb8-d9a1-4d05-8aa9-e9aadd95709d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d77f63b6e20d8b7df4fe49d98fffcce59b3c6ce3a7592d5dcc89665aee2dc970
Date: Thu, 21 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658395612
