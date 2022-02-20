Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D1B5EA4
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645376485;
	h=To:Subject:From:Message-Id:Date;
	bh=Iu+amMFMXP+ps3UetpbL04DPvWrbWeVphLpLXinLE+k=;
	b=OBDb9u47658FdjpuXUSMQJoY0EZtySeHwSW8/A4VssyUy0pV2Z+uilUgOJcRvph1
	/0S7fa6gEWI02H5tmdnz+0lJuHpoF1SJnf8vbCkPU/Cb9kB6lMJB0k1/B4c1Q0z+QSu
	i6Bt4Sf2Q++yfQgzSebXPHwruFZ0gBq+op7BhfCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645376485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Iu+amMFMXP+ps3UetpbL04DPvWrbWeVphLpLXinLE+k=;
	b=P3xyGXjEkB3j3jvEVwbvGVbtiG5jfccOkJyEBeirLnYNcveWZ1vIGiszVP8S/61d
	KzhHHs2mKEi0nw0KQGSdb4r3xnyI6rKWRpObGyChoaTMdk0rBpIwK/6avfxZlRn5kxq
	ML2kysj1HpM02RYaFokeSiUcKCPhU974UsKpEkHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1814b594-c573fd98-7f84-4521-98c9-24f2724087cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc7fefbda9239b37d8a1fd0edee12ce842a7785eaed6561ae44f2ada0d90bd32
Date: Sun, 20 Feb 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645376484
