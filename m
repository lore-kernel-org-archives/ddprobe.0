Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B447E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646821885;
	h=To:Subject:From:Message-Id:Date;
	bh=UDselvzPfzxcD9cVkqOtsLjxwnvTp1swgW/IFFF2EmQ=;
	b=kT/R3UNhJqeUJ24paJVxkGsAs6v1U3E48J28PCZXIZZuq92N4svw2FHk/jGApNau
	HUAkAv91CwE2Ekf5WsTfHaONb4oQCI4L3fk2lCABgFStWA3fRz+lo5j3DVCAnrT7bjA
	c34GZLif+/bvLBVM+8i/g5FNlq8xigRrEbxJ8mto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646821885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UDselvzPfzxcD9cVkqOtsLjxwnvTp1swgW/IFFF2EmQ=;
	b=P5oLkxNLLAPSBREeP0dpVVmZUwHtdMl5n2PUd2YV0jbgBS3PqAAnFVEJLLTIjysz
	DtfJGUrePqEpYRtaKL69npkE/ZbS86hX7QXoBc1xq8rFGPHDKInAf/Q7LtOfQPwgLBu
	vKr+tKaSHvGl+NaLdgQsV8XfBm6XnNOme4S1g7xM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e3bc349-eb13a982-b1f5-4fdb-a1b2-9b7397b16374-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0aba14b27ee28150279a22195dcaead4a5c06dcf99f514ec1b3d13fb57d36ef6
Date: Wed, 9 Mar 2022 10:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646821884
