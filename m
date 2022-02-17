Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CEC3D61
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645093285;
	h=To:Subject:From:Message-Id:Date;
	bh=fgFERKd+zg4iZ1PKpncFSEhRaEJGc9E/Zc3NFzXBpwY=;
	b=X5I36YUxQd1sKccwF5yIcnvng5uvT3Q/h7D+PXGFFJLizweNQLHAFBwkoOHZ53TG
	P41aaLtrhjE898Vq7UC5throyK6tHyF++OoAWy6ttX5pxLRVLEQ993nUZLuBs3PutQ3
	WBDP7ohXz6YXhfWQETWu9wOTXLLrvxilPNXVnSGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645093285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fgFERKd+zg4iZ1PKpncFSEhRaEJGc9E/Zc3NFzXBpwY=;
	b=iCBu9PmNvJG92l1URYaIikyecNK2gBfTERPeneRaQNIYrdGTlCw0KnADp9aDX7Nj
	BVFt8H7CK3KqHmIURfsjDkCb7dtbJkXg/MY5PRSO1gd3caeRNuiSERdsjKatLGcEWEb
	TjaNl2GJpVA9Cc3lvGm+9AnDNaxgas1NF7faxvyk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f07336bec-c7d105b2-faba-4dfa-b0d1-732a0e6de121-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9d1b3e3c7a449f0b96db35ae580c448f21493e0f6b9fa45e05a72bcb0a7a6b3
Date: Thu, 17 Feb 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645093284
