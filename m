Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9595E17F9
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 07:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648454338;
	h=To:Subject:From:Message-Id:Date;
	bh=S2CTZYvpa7Sgbu88KU+MGCBNMDV179DZSZDagBW33fU=;
	b=MbJymGAyhlmeodH3BeapWItPR5q6ZJ9rsNqqXFUhvQkea+FN+C2piaWh3Mi/RIRn
	11O45GbH+OpLV+QOqju2FeHV8zb2DLt3Qtu7T766HdTvvW9/c7mS/d3nNLeOB54Ttsk
	HOrKQuVV5/g0iBsh9Xi5K8J24ZNqpFxlTUaNcs5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648454338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S2CTZYvpa7Sgbu88KU+MGCBNMDV179DZSZDagBW33fU=;
	b=CAAq4nZPmhXQxILuF+0EtNZ/F1ycl7TSE4AN+VbEBqrpp7MAns9i3dmDFWYm4xH2
	dGsP4OL8b+/eiXcN+RsBK5lJoRI6uLfdboNW6PpGWdrZ/PCwRpmOQBFBh18uM+UiGZU
	btcdSd5Rg7XjX4ja4/3WYLdB3Ot+Fs5icRwIiTLM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcf8906f6-367b85bb-9568-4d8e-8f22-45d0fd7a3759-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd4908495dd5ed4383b97b076ff9c68f17afe9de31609ec9dc314801133bc650
Date: Mon, 28 Mar 2022 07:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648454338
