Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF1D2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647598885;
	h=To:Subject:From:Message-Id:Date;
	bh=hIf3hX+DgG1pu92OdQiKytkjJzBOwbosqyJe0DCbOW0=;
	b=moXpSdDlOJxaYfNKgmqCWCqaReB+BC+fknqiW71rqFgic7nnJwxtiHkR1bkaLwJO
	g86tqXxPzxeYD8Gl81rlhPVCGcsgKRppXESta51CBPCR7xJsPFb1/aeved9dEA0p3al
	/EI4DjBQYiO34QDs6qjIk9WIQe5fxXnSAJksSsGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647598885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hIf3hX+DgG1pu92OdQiKytkjJzBOwbosqyJe0DCbOW0=;
	b=geRH9JOXVaAtzM8C40kke6oWCAhIWOqkWrabOkGvvH22xOuZkRwMLx9CVE/ur8fO
	6ngEdFhv2E/dWhEBMSLlvnPY7I17nu0KTnk0QqfnVGj1uVtbDs0wKNOEH8Q9pk8fTCf
	nSllGTdJeTjS4+i6cfPfM+waz97NwpyPmkZHBo/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c8bd7c6-dec277e0-ee20-486e-b1e4-e692dc9f6328-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c5432b9a2a72ac416774ab90bc384fea5eebfacf92df917e06e04b9c1125376
Date: Fri, 18 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647598884
