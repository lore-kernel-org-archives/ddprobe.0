Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8ED5127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646859985;
	h=To:Subject:From:Message-Id:Date;
	bh=O5jwjH+H6uq2Ed8awaK6AMc89hiLNkbc5BfmPXdA/3g=;
	b=T/NHzrAp4Hguc+H3IFs52ZrRx0pCLxL5Q3gqJk88HzCcC054ktU2heIFujZe71uz
	gLtTbKq05dKW30eDj+9zyYIp2u7uhF+m9luJLowzLnNAcxhppnEMJcOsQFzbQnW1awU
	ATJzQBx0wuASDw1KFOWZOxe3tjj0uie6XT+vJolw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646859985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O5jwjH+H6uq2Ed8awaK6AMc89hiLNkbc5BfmPXdA/3g=;
	b=S9ryZW5D6rJZudELCyjRmSeH+CRO79D5XYwQosveAWJYdEnjxGloIj1BOE6XL9X0
	hk/99daM8ma9fxX0cn6xea7yE8Oov7AjD8vyW6y+P1bsO9WOvi080oUWejNopJT76U0
	rzC3eb4aBwVJ/BaWgB/5GHqww6IBvxNdp5kl1v+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70811fd6-7f9dd00b-79f3-4025-81f6-6f08c76d5cd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48f2373b4ab6abb5b9cdcdc16cd82de97c08e828b9663c1ac60244f6c8b9703f
Date: Wed, 9 Mar 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646859984
