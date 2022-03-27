Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F627E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 05:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648358818;
	h=To:Subject:From:Message-Id:Date;
	bh=+yCGFClNEeIncdw/yfGLv4zIKihajzLoIWsBDgFMyYg=;
	b=M/VbsLoSSenu/sjZ2SU8f9H3XkZVRDuyy94J0FkGeSh0irXEHP+teup0Bu/8S6F8
	8KBAxBncYHIHfY4W03W/EMHdYT+hrQ7pWs/0mK74BE1GtXT+u+kuS3OLJaZgDss0hc2
	KeZ4MYzfO4kW4DPS8uQX+AhyMX7Ke1bgro6lXo7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648358818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+yCGFClNEeIncdw/yfGLv4zIKihajzLoIWsBDgFMyYg=;
	b=PAKJDiBO/FNE6U5FORA0Smp1r1gwsipAcbG6xW1h5DEUVlLiDnNVLmLN3Z1SjGDb
	e5wp0+5tKS2vpvZnSnL4ps8NqOVwvxcO/FRboh/ftzLvAf7lYt1PRo2FgqIIi8lrsPz
	qC3IqXGZpac/BvrOOfepaIIG2wIf5hH9B/mPxmv4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc9d7821e-145263b2-deff-4139-bed1-3c19c6695adc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dcbe1c73064dcfbc668baab062b3ed1d99e482210b09a811820702a4c9ccc10
Date: Sun, 27 Mar 2022 05:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648358818
