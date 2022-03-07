Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660307E
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646670984;
	h=To:Subject:From:Message-Id:Date;
	bh=Qe8h1xF8VDbLXXOTfZsbZY8vgX3IIRsXX7Cp6NJWJEM=;
	b=IguLPqWRsu1E+G96YR00IVxsksgXpKzPFczOYCIosgOZq5TwPvbKKpDBtLEHGEz7
	sZt8dUeesf/oT0njCirqQz7uE9IhxvzPaDqawLaoomKosq4iForveMMMeR4Y3pTWlbt
	iIJcXzHjU/TiejJXZ5wnQ8Mi/aouA1TXnsGD46KY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646670984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qe8h1xF8VDbLXXOTfZsbZY8vgX3IIRsXX7Cp6NJWJEM=;
	b=AB7xHmmj9VmKyRp6/UI41JKd6xr0X8qGa+8Ru+OsXRmG0E7p77kRulTWNx5jmL6W
	Ou6ZDrjKXhXmBEDm4zLAhjJGeBIomaBZj8QQl+q5uJEfZP2VtEO9oLuAdmWlZcYfja8
	JmcZVjCiXttSG5Uv5yYPkCENiYsN2vSa7Ii93el8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f653d3635-b5545fda-19a1-493c-a751-2ea32efa0755-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cac1472abe47c8a2a3f7a08a724e179dca701cb2cf7ebcd5cc6e7c59dbfa776b
Date: Mon, 7 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646670984
