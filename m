Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C64F7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646910985;
	h=To:Subject:From:Message-Id:Date;
	bh=LjAN/dzec64rSjcyD9OXxyQi1em4BjFYM1fcsCR5r3s=;
	b=kAeKeoNIPDuOlAL6JlCoqSqrxnLKXW8xnXO/18/EpyV20nJCaAGMaaxbTAMklCMO
	MSlty2lrI4w1XO+jVdhOP3GEm02i3+NaiE3+mwsSDluWzlYmB/fIZXmfO0gLESf7Nj+
	vvC8UIxAEu0xcsAuE9iJ8oUy7SYMG8IhK65q3nD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646910985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LjAN/dzec64rSjcyD9OXxyQi1em4BjFYM1fcsCR5r3s=;
	b=iEoG2G9VcstABxxPNqNF61OIniLUZ8v6zfG3flFVNV6EXrjmtQObIrsnFN/q2Wvb
	VBfH42WfM8sXEJcsxp44yLtfmZzUWqwGk/WINOAk4NQkLRgLuses+kx09cHxpLbl0qM
	R9sXCO1qu/UaUQ9Mg9/6Eo34GPDKu2orK+GVmYjc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f738b523d-21c37f40-70ed-480c-9a42-7a07366b7208-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e70d697061d69824956a0b38f35783846cf8ad9ddf955fe674c30bbe846c62ba
Date: Thu, 10 Mar 2022 11:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646910984
