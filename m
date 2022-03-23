Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF82ECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648005084;
	h=To:Subject:From:Message-Id:Date;
	bh=DthSxIkYsEssirIpMrRX1JYlFW+HVerYvogwnFROE88=;
	b=P1J0YfdbPBePfmzCXN4IpHvNfxw19WS9Pq1XNZ5dwjDScBs51e5qQkAL40UYxZHV
	6/Z/EtoneJuraK1Q2N7IFe0t91+CVoDcnPM9tjIiI5tji7PG5ICbn7ZLdUOhS+3YKOm
	1RO44NtZH52OMy/iwmnbD8G4OI9ywFsrS7tJJ330=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648005084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DthSxIkYsEssirIpMrRX1JYlFW+HVerYvogwnFROE88=;
	b=ZVAXs2IzQtzuQ0awA7tGit3Onvbm1CKN4apEJol5iA+4HSQsikcAJFPI/8ridQi/
	43YsOWGmaM+/6sW/ieyvjTYIJcG91PZDaPYxaM4cJlOdrQF19cPHtCi2tKk6dP3Ugtw
	v03AmM0apuqsD5/EvFrAd5gXHoJrxyDp3ZWBfxvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb4c1f628-83f30312-b2fa-48c7-a1bd-e1bb35dff7ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20865e263bd5ee0adbbf02fef83437e28f9f6188f2b586a3b45fe1bf5e362dd2
Date: Wed, 23 Mar 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648005084
