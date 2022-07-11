Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321AA2F33
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657573612;
	h=To:Subject:From:Message-Id:Date;
	bh=LhHGovKk4BEQCz9vqSAmOKyDV2BtuZkJ04TjW5kCctc=;
	b=e6sg7ukIK/pHyOTAOiWSsFxZ1SA8dUdgJOHY+eOzA0ZNIPo8MoHOuCbVPRTmBEw7
	HCDJDsZDsfptNbWw1f2GaP6oSFiwCGjZVwPQQD3mxNzRR/ES9Bt7zPfyviN0Gmzc/J5
	Tb8pJN0loyfxYRsvOTeU2rFwIObC1eUR2bqismf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657573612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LhHGovKk4BEQCz9vqSAmOKyDV2BtuZkJ04TjW5kCctc=;
	b=Gxagae8FdlKTx6Zvow6gXJqyJm0yqQhNJ8Nmp+B2LVfkEyZ0KpXo9LU3sJDKt9d4
	oxcpwGrGgvKJIEs1DAK20Ppg7o5dP8KJBc0UzDKLQNfcosBMT2CseJQZO1+cI0VltgR
	OJfOrtimbU/X1TJxX1qxvjfEE4SGtkiycEVurQW4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef161b26-dc209532-e76a-45fc-acdc-6371c95ee1a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8cfd9b08ab5f9b6a83abf69855d11a794779abd1d3cc1cf383e5f318f75d583
Date: Mon, 11 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657573612
