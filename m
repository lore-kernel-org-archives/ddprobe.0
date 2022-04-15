Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6581D19F
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 03:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649992858;
	h=To:Subject:From:Message-Id:Date;
	bh=jNrVBtPRbbxOkmJ0ISt16c70Z/spnzEaj425R3SaVzY=;
	b=f37PX93+L0MQcZmgMZin0plPYHzPHFxSwD0NMyflYliVP0Xkqxpxov3sJfhfC1YC
	CF6F5elUDTePqUNAqyCAxS4/eaWbC2kdzyMQo29jOT9rAoviJYojIjykYMVnn8PR0/3
	ErzqJ5jIoFPIT7ZOsB5lnDCFlnQqe8y04zcyit48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649992858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jNrVBtPRbbxOkmJ0ISt16c70Z/spnzEaj425R3SaVzY=;
	b=J7pS5Hda8hQZfzk+CmQykG9iNvM+k3btHnwsIXQ5Sq1ca7hIEUKDy0ZznLiCcsKy
	9rpZoQQS7YzgZzb0/QD//bhtpvW9UursQXbWIjV7wzO4DtispeDuivIhx7gOc1B11jx
	nh++2BG2qV619X7oJ35FeJVi1RF2zYIvApEhKciQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b3cfab8-2543f6d2-194e-4bcd-b6da-bc7256235566-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44b1ab6ebca69e0c49da2381ebfcc10f42d8b64e891aadf19beaa220fc136a1b
Date: Fri, 15 Apr 2022 03:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649992858
