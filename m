Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA896AAD
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646507484;
	h=To:Subject:From:Message-Id:Date;
	bh=NUdljWaHSaQnok6EIsYlPsc8bbVOILu8LPGznfTlM5s=;
	b=JrBsffm+VrXgG0T7LQLMCtzVfkqCdZqNE5tr2zGmmoJy/SBcNST2FopV1cAsn2rI
	pHC7c6BImsGMyo92UsVgL1AJnvoJoHSgg5AbajJ7UdwbQWkFIvnVNOuFTtDlGxSWdek
	Z2/uXuk/ptkDJyprrNdt1FEXFrrEBxSmJ9afq47A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646507484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NUdljWaHSaQnok6EIsYlPsc8bbVOILu8LPGznfTlM5s=;
	b=iKt21W9g0sc8lHwE3tnLgmuvUwVTC3yarCB6caAj5RbansOjxRYZHYEQsRliIL8o
	bSOLCAEIr8GIOn00LsNYRJ8KqJCmMtnRaYXe/n4N4eeg1ScS8G1c6aK2MRlyQQhi3dA
	2gDprMdXa2qWmxqRxlzJ9yyi50yvQyu0Jc1hSxd4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b7e6685-8b15dd29-5cc2-41a6-a80c-c8853a364589-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efc8dd7921481f692f49fcf7c881ab2760a70520d14fa535b54631b4c01fa48c
Date: Sat, 5 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646507484
