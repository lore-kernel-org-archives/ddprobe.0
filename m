Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854AA1844
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647318985;
	h=To:Subject:From:Message-Id:Date;
	bh=wZzc6z8cOXWsUpY9G6YHLDh5Cgd/SGsqOsKcQVXslro=;
	b=L74Eigc2g1MfR+GGGmA2JtEaUxXK67MbELdRCd9o3kK+VWP12C8paExVxiuiAomY
	VmTcn+z4fb5WVByOqGu5oczrfU+zQ56ueUTQoyNCoSrVJNXbax9AUv+vCjPcMG6/TsO
	pqkFYWfLgUEBA1gJdG2Bo28o79N86ZKZsgzuWIsM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647318985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wZzc6z8cOXWsUpY9G6YHLDh5Cgd/SGsqOsKcQVXslro=;
	b=MgrTQgUMgLZ8truIO05gDsJvmI91G0ZdL7NWJ//rk3/SwoNRRPRh8SHsg7AEhUrg
	U9ouxktw4QBEXtVfKBWp406Z+zGonJXt3nuqWHSs2NlggknXc/BlYIVUqauVRACAYHI
	wA3251uHBEICZnywoDfo4fn3QKqwfwtO+CM0lMPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8bdce857-1efa9c3f-2c88-43e6-833f-50f7b99d2a70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea9f3156d5bfa06957d04df7843084a066a1f144eb1f5548a105707b921ab5ee
Date: Tue, 15 Mar 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647318984
