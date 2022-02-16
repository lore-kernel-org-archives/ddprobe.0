Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDDA3691
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645044385;
	h=To:Subject:From:Message-Id:Date;
	bh=LR47+CFt5l17S+lKBi0i1r0gQlxpr0sZQhB2DGkJwgM=;
	b=jt9KZd6BUO0da/66unaQZx0puKMjljZ62Zekkh/YmvLCTA0qL6+Qeuj1ksGGM3Wo
	SZfuwWbBRpVko2+GkzvSUuUA6w5cnFoGcsmgQbNkwtEQhTGq1kfOArwQq+JgV8LZgcX
	jGvfhy/kKbWLo06E8icysprsPTQpRdYvdebt/TTA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645044385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LR47+CFt5l17S+lKBi0i1r0gQlxpr0sZQhB2DGkJwgM=;
	b=JUFVFW1SEC8EgGWR3vvlbjVCYE4Tn3CKibKeqbajHaZPKNz7NERM89EH681LfqfS
	GH6GW6D5drNqGJuoXiRJtgNPjJzCkFm79k3+ekyx1EAZrn158ytiRHsoNGdoK6IOnEe
	Qm2OvS1cXDL9zSo4yfrSJSzDcx2taW9TGmDlNW1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0449440e-726f425c-3fe0-4ba9-9b1c-a37eb548d7de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd68d570c4a058fbfa503d6b3e144d80c48d1ea210cc9028f745141e667b2125
Date: Wed, 16 Feb 2022 20:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645044384
