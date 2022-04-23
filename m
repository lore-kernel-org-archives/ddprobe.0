Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C417A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 16:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650731818;
	h=To:Subject:From:Message-Id:Date;
	bh=6AnifFSR4QGo9Zjm8Ateufv6lhIeSV3LLDjEmu4iu/M=;
	b=gtSz/KpJas2AtXaCKpD0BGT9ItJN6avUFDET2WdTUU+fQvqoRQ7O2Np1keZXjq/i
	ICdv8CU5FKmaYYE5dNCC7I971hLaflx4RsYtYCauIYqEYA3LI+21l8av4PbeTs2x5X5
	cm1Jil6f90T9Hkxym6DxMsgTLLVM0qTvEumYIVtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650731818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6AnifFSR4QGo9Zjm8Ateufv6lhIeSV3LLDjEmu4iu/M=;
	b=LxtfFuaPS/c+g9CEmbERAVIvv+80RqoSWrje5Bvx2K3v+eSlLOpfF2AAlN22y1Rt
	zOQ5l/gOpQYZQ2C7cjQe8BLo98mVOj+RH0ddQjGCirfxzUHGbqTJgtspZOoYuP3ARQr
	6/SaX5Ef0But12fSLP2WzfITlfVVVhiy/Z4pHJzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018057489d49-6f4a28bd-5537-48bc-9d60-e9bd415d5ffc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9979e8359c853a6ab1533b7a34e90fbc938e080dfbec07f623431b036052bbae
Date: Sat, 23 Apr 2022 16:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650731818
