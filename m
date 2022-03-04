Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14E37A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646400385;
	h=To:Subject:From:Message-Id:Date;
	bh=dTLjaNcZwLQWQNbCiTUem3jBGV06MHUV0lOyAC5dEQw=;
	b=jfem9dP0v7d9M+XRwq4Sg8GLl7KYKt2rWOI5FJ0Q6iwb04+mDuC/Ea7W/kNSY8a0
	1v58gP50nvNcDP8gkDm6H/qrLNFWb3d46HsH3lx4iyeQxXj1rigis2C50jUvzhAuFOi
	MhONzUQ8ow0XM0u7hdFHDXsnMHkNxt0YedWsa2Zg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646400385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dTLjaNcZwLQWQNbCiTUem3jBGV06MHUV0lOyAC5dEQw=;
	b=blofgCTOC0XzDC25lVkYReu7wcbNNybL+cMCIXg/TEXWx5hst1bw7TPm0DZ5ebTE
	FsRhiDf4EmfU4GsHfwupqxZXW2Kdwen4yropqFAq5PdmQeEKf7327Qs8MQNmytFhokJ
	t7kQXBJzJ8zDbTgOeOIvW/APlin51QYWbGpIxqR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f551c2eca-0c893ca0-0463-4a23-a737-a088d3e5542a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a948aea1e98025dbbb15f438afc30acf7dde65182eeb8dc59a25e1fdd23fc6cf
Date: Fri, 4 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646400384
