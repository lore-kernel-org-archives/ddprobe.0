Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDE57A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646727684;
	h=To:Subject:From:Message-Id:Date;
	bh=j4mqQPT4T2Wze2cqFHEX8tUnomtZmPExmZmJLkj0wnU=;
	b=ENLuwjm65MzXyF49Pi1QEv4sNEMrxen1g/AAqljPxtkDAvLTzwC3p2Q6SrjH52Dz
	weYKdnkEi41PxRqmMlu9tD9f1BUvXMaCXqc5lcBLRioXelktxYfTcyw3oI+ktNAc4aI
	mpKzpDY7mUjJSEWv5b/2KUdKn2j/bB0OxI5Srnh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646727684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j4mqQPT4T2Wze2cqFHEX8tUnomtZmPExmZmJLkj0wnU=;
	b=PCS5AeiEi32S/4QKwHe2Nhx0MCD9KWy4/AyGjf4lw4S5ilSAIDTwRFVzc/RCgIIU
	4Gqftb/vXp0SdKpWkXhT5nwjaCYJDI3ztSF/4QKjV/2W4AZidH7guaHTv1HUTq5jUNK
	Gi+SB/afnOqzyduXK/m0cFSbcsejM7a/dtj2VUa4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f689e627f-0886c0ab-8831-46ef-853e-8f85698ffc4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d467c9b6f73be5221fc68f1543463cc1d9b71624c38e061dc4da926ec197dc3
Date: Tue, 8 Mar 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646727684
