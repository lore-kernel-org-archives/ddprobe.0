Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D80215A4
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 02:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648349458;
	h=To:Subject:From:Message-Id:Date;
	bh=zDj4E+YNqLBDSfGaW3C4UeX07TD+N3MPf3Eq0UsACVU=;
	b=bs9OzHw/+bIn4frIEZm1CZJFsscOIs+m0LRHNPzIALWR5IkePjDS1PkKU7MTmfAF
	Vz/KFVyXpujacoFcQdO/1X9f7UFXmrSim8skKTAOy0ECOWLNXNmmBewHuLN6BgjIlEY
	zhug5PdWFm+HIaxK8TUrxVCgghgE4GbWoDx9HJmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648349458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zDj4E+YNqLBDSfGaW3C4UeX07TD+N3MPf3Eq0UsACVU=;
	b=R8QfNdo/fImNEOr/9TzymvqqTax0oU879g5AnFwHXBiVmaM6jS0FD2/NemJu2CPl
	ackfL9IxjlUQZxrJZQ0gUQCULXjkjEi7CJth8ZKmsBA11XrUqijHGS4hBTm7U9Q+jJO
	Jj51rguCRMljqSRq105S4CYjxEgLIFhmCkW9tppo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc948af76-f5c8a959-f3b7-46e3-ae91-c25fa59c7a7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b937653ce625fecc026ad5c3807f92c0f3c0f12cff184ea1517494845ca5a8ce
Date: Sun, 27 Mar 2022 02:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648349458
