Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490E829A9
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 14:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC044C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 14:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680706625;
	bh=tfNb2Vl0yhKZjCEL+qCuxjeghcm012URSDKsYzDDitE=;
	h=To:Subject:From:Date:From;
	b=G/HLvPp2S7xD0Wv9uuqXA0cJQpPONAlLteR4dLxtmBH/t4lvPpCTVSwoGzwcaGJmj
	 9oBZ4P7IFAtV6deri/Fr3y7EnJdhl7G66RyfW6fpPUSPZ/dCrc1KKa+hGkjOj7OVwF
	 iVa6+oNG32N5ohnZMKCAA6/7PhnwhFGDZVcksbgj0fB0dj2iD74olNp7RKrJlfuKIP
	 bAz1+ocDaDQC+KhKmDwIrWfq+fo2zswbDlPALYs2QYuw62HfQi4HoK++in0L6uyhwM
	 omUY1lok4ZO6bwsBMeCatkN6AHK0V996egA0GtsCOcUunFTfbA9O2LRKcGckt1XT9R
	 cGeXKn1uEIdWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A88C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 14:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168070662574.5651.7796910587602808121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8065dc0bf052f3e605617725f9feacdf1c27c76d41bfb5c6e570037a3a98c4
Date: Wed, 05 Apr 2023 14:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680706625
