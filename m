Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE1F5CC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647029785;
	h=To:Subject:From:Message-Id:Date;
	bh=IWR7ipixTg+ZT7WCaYIBX82H/jWhj2suVxLpslvKHh4=;
	b=MMnvYAy+qYa0dc3jfvTFsr+zDGMBnbhRkccm+QKHwJQiehkx7PUbvPWk6besPzR5
	Ux1wBUZZhWulW6LwnfVwT2+ydMCkux1HCC9aYWjCnEfggLfgy/kYiyyKLxxMLdbOIP9
	iqVYRJvBiVsYvhWDmwQxy1gZ6zFhhy25FF3OMtdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647029785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IWR7ipixTg+ZT7WCaYIBX82H/jWhj2suVxLpslvKHh4=;
	b=Mc5XSDa4xTbJGQ14PEghNn1EzHFWQCK9dvykj6xGUGGx3tB9Aiz48rOY8Pi+B1+C
	rQALz+FhOiJ5mMZGzvvKaDJYKdg9iOqHRU6YUwY0Fkl3jEUzjlEGwp+4fwZf40XgHJk
	BT7Id6/mK6N0D/ZHC7cFF8cPAm1soeqV/mCjmLfI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7aa010f3-be6556a0-1d83-4dc2-a53e-6d7650fbd1eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 761c545d7207d81edf89a74c13c839a105a14dcbb37bce4c4c140abae0045b26
Date: Fri, 11 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647029784
