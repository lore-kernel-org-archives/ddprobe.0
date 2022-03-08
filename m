Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3CA48D0
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646744784;
	h=To:Subject:From:Message-Id:Date;
	bh=DAm4kUtbzVDCKq8K4aZkBPYJN+CZRhfWtB4ml9imrE0=;
	b=QGi7+j/1cDDp5PDTMoGSwVDtdOSx/FvtNL5YNNCSyK7O7Abz6xHE6eCUinMOJgMU
	vr0AxC+j+J7JVEcEg9F9NDTQhwN7lvt+Uf4b8Ue/xEADAzCjXejDdqmqFx81Cz7FW+x
	ng1+3vzbC6d7Ls4wxb5yESl4TUIqE7o/DnDdfrh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646744784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DAm4kUtbzVDCKq8K4aZkBPYJN+CZRhfWtB4ml9imrE0=;
	b=UeWp6a5rasbbeyU1sNg5X5Vz4r2LCCw+vwz7OTnhx02wTCGcHKlBnPR1FR6sSa9g
	YAOgE/P1mpjhXfPy1V1ojWb9Bn8nSqqTm6LFIdglUf4GgLK89Uxq30dUxhmEVGxTPrM
	QF8pJoRm64ideyB9HYbgzSwF3sPkQdXujwQcywP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f69a34f59-028f5624-a029-41e0-8791-313a555bff24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7553d44acb261f60e2c9c0fcdefb76e1c0db1d0c5cf7e4ce5f2f2b2a506a175e
Date: Tue, 8 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646744784
