Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA477C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 07:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644735662;
	h=To:Subject:From:Message-Id:Date;
	bh=2Wa5myOPD+O8T496XNkVcrsMQ2CXcKPFjaEFXk5xxnY=;
	b=jf5vRPa4vDoMFddkIxPQ0g4HIcwsl5seW6fVd9kX8jfv13fONTQjnUv9o4HgmDsv
	ZgRTyJ15MRkMkv5rW5ddd+clyLnkZYxfIxXKgaCttob8suMLFfKadqLbnOhhSPhg/Db
	VjuUDhKQMLCBtg4fIpDZ4bYLw8ZXIGAri7rLWi48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644735662;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Wa5myOPD+O8T496XNkVcrsMQ2CXcKPFjaEFXk5xxnY=;
	b=gjTn/069qVlp14SdADQDG2zwZ25OB7/rZFflyjt9RB6yX+8TF93L0SOTfkEfj4RP
	T5DKDL0UbGGEDJ9tXw/uk0dP18sob8i+TECQb7pX1A1xJSGakRpRPbXc5AohvxtFd3z
	46BZlGgl8vHb2lXpgo5xpxQZzu4FO14yEaHwlmwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef1e28651-ac5f008d-f808-4dc9-9e61-6e1cbc36df81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c8ca86547daf8a1488261e5aa116d659e10792ce8776fe9c8fb71ea1d971bc2
Date: Sun, 13 Feb 2022 07:01:01 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644735661
