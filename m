Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4808D1FC0
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 15:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650556378;
	h=To:Subject:From:Message-Id:Date;
	bh=1HcyGJ2UcokdUGel25gIfJzz/qYeeJRFzs+op83MyFM=;
	b=QKbLiifIQ5+XIQiYmcBNgR83eOZ8WOa4UMGVwNDnw/84zm0rX/tlqbugUwBx4uof
	y9s8S4bgobeb2V4RD/teAY7pxshsfajND+QCR5fxzFaAz7YoZxNYiahA1E8pEVz63ez
	2zT4c23eXRE23TipBluWsPR3IJXesSGUlsYvROEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650556378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1HcyGJ2UcokdUGel25gIfJzz/qYeeJRFzs+op83MyFM=;
	b=flw70apqyP5L5vW6Cfn0GUZXOLIRcq92FAqzyADOGm3SzD3r8ym+qCQ0Mt46ZHkw
	10B8nfsa+Pba9JIijmFhUs71LD71JZ6bgBrRIiS4PCEw1mUcRCa/SAzc2EUAjLJm+1+
	quVzJxFL/7wmPuHYMNlP+iqQe7zW3WQHnZaW2myA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804cd39c8f-99dd4053-8a62-426d-b284-21c74f3e09ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 875b6248eb9b359eee00ec8f32a826ed523717bc96f3dff8287b75c9575d2138
Date: Thu, 21 Apr 2022 15:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650556378
