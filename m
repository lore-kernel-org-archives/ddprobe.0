Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227DD1841
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 23:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652052778;
	h=To:Subject:From:Message-Id:Date;
	bh=g4geSWu64L55iThLNv3gl6qpSBjvea7btnBjtJKBifU=;
	b=RHrdD0MVyW/t5WdIjXkCzKdapB1PjDCcwkXbM9LwNK24FIvFtPOQZ0RsSzb76C3V
	YyX6xNt+pbXPYA6xBmio5QLdJAl26CgIx3VYwlXmcL33HC6j5TLaAIKz/gXX2ggj1YH
	hgHfXt2utK6xnK4ccaZOIh+Mi36i8rlF0BCc9ObE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652052778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g4geSWu64L55iThLNv3gl6qpSBjvea7btnBjtJKBifU=;
	b=UskM6q4QBa8y8nK4e3yNjBrCyE+zwvRcJZLdcV2OXBA3zB7gNFcdORq2xlAOzmxB
	M5gm3jqhf0U06DIC5pUaGNtFJW9HltQ7vKlUFHi7up32vl/qucR7/W6KKBooo1QenQ1
	gOr9ymLkt+U7mzU0jFW9JDxvLCEFs11LBUwBPS1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a604dd5c-f3bab2f6-0f00-4a20-a178-876068cbd8df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e8765f96f0196e41b038dd24630bb8fffb28aa8352fc533e049241a4d461bd0
Date: Sun, 8 May 2022 23:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652052778
