Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578B61866
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648043485;
	h=To:Subject:From:Message-Id:Date;
	bh=6Djq42BYJ0gpqWKz5hm2eGtwVtq0e4pnJbcfsCgZkuE=;
	b=EotGZ2Sk9tDozvgz3IA3GEaQDiZx4yXWePu+/akwgj++Xx3hVIpmq7xbhUV3VcmR
	nuZJ/N/iHNcFJltr7mrhgUi0NDo55Xn7TjmT51yzvcahAbs0NY2OsWHwH4WDZDCu9uk
	ZAnmfFB2Mt+5h9nYcSaTDESLOY943E/rNHRffh+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648043485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Djq42BYJ0gpqWKz5hm2eGtwVtq0e4pnJbcfsCgZkuE=;
	b=fGvGNXk4MnyeYeC4VZ6UZREVAXPUkADV0rgx4SUzkB5wWxCQyg/QIEaJtBydWfeH
	asc/9tas38on7llI8HgvNEgi+QX7ZjvAKcSQlTP5tS4XqaWbejmiQuxsU03XYYNOcHM
	QFFPtT0CmvunnT+H7R2it3RduRvkHEpRx4KkrQUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb70be65b-098c0ce6-96cf-48ad-ba03-a756650e649a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8aeba85af68a2bee885e127421e792ec11f75507c34276816ea22afc552af5eb
Date: Wed, 23 Mar 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648043484
