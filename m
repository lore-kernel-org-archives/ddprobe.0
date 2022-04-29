Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B181365
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 10:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651227598;
	h=To:Subject:From:Message-Id:Date;
	bh=CfINNibWZUFcVUUhIWB+35IaqwnqZig/KHlH4BlzQlk=;
	b=ltnVGNXg6NCDiJof/Z76pLWOXhbCNtZmGocgcf0+2uFVtG3YRdu7sky92bXblWGl
	HZjeIWPsbLHN9haKTZZQimorDO4UMjEd73lPhzl8vb7N35ofbpwORw3KdVQqI3F+X4M
	wnBo6rtBDBQ8RHUYTQLFFC9IlSCaq8/sp1neASyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651227598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CfINNibWZUFcVUUhIWB+35IaqwnqZig/KHlH4BlzQlk=;
	b=fvmjNdEYkL7f10bsuv2QMB4VS4m3PHqadgOTuNI3EmFcXnHR1UU9mfH8MR9wOREk
	9s26ZorwIIAImpQkZKz5cUiEOsLe9XXXZfnIBPH3tHgqHeiHt3OkTRW2WQMbMqz9qUI
	yLbwBL6BNX4lKheBm9Wzh/r/njMuh2ZUn+vgsUjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018074d59df0-5079dc66-fc03-4ff7-8ffb-77d19cffc665-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 322debfb21136b18bf1364bb971faa6778a9626575102699018a103f330d65e1
Date: Fri, 29 Apr 2022 10:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651227598
