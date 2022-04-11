Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554351849
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 14:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649685838;
	h=To:Subject:From:Message-Id:Date;
	bh=l8sEHsu4VTZ/v8OhStmhHSPefHuzkpc8LyZmVpY4cgw=;
	b=Po5Jn+w0qMlfTKRQv3owu/Ba0og0BqhJFGewju5XHjFBOVfUQMbww3Xgmict6mwG
	txaiy73IFXNk/ZBMitcOruVQgfEct5rUrvGCdaC4fcJn8ZhduOTVfr8cZJjNlQnNnuC
	HHKVf+v9RU23zzKPF/IK90oVMuKQWwxr56ejYL2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649685838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l8sEHsu4VTZ/v8OhStmhHSPefHuzkpc8LyZmVpY4cgw=;
	b=J4VYEYDU9GNZub0OpC1oN4+5IZ2gGMHGVbBVQx/PY3WqxzMhEH9FIbyFAbFJOQhd
	X/uNuP69Hmtfb2QjnN+PtY+NmyBBFmiamgz9Qs8EVgZf6BLf8DSQit3nF/iOONiK4ud
	5FLxICLvRsqXHqXpuoH9K24R2CB1DApvJK6itsSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018018f039ba-9e2e74a6-ad4a-49a2-9256-51648ea528d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0f9a07f9596f024a8f05c2a4a5d30e03357d8a0fb1bf6027c3ed5aede1f43d8
Date: Mon, 11 Apr 2022 14:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649685838
