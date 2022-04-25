Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E077E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 10:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650883918;
	h=To:Subject:From:Message-Id:Date;
	bh=9dK3u406GqFAMB1UP9m69SiTZVcA2XdkoX5r0fBJ/4I=;
	b=XN+0pMjslMPAY/2fspA7jK4DjTVQ/DUm+3oMzjKGdFfogBFysrYFAwGdbRrSagLq
	+6lGqeHS0wFMQ3h0XNq8pNQC1Ai/pS8PuqrAjybLlQjsagp3pYsR6/OPj7eADLwYMvA
	UiifJ5DE3XIKFdzF9hykBCegWFnhdi38YVDyAnNE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650883918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9dK3u406GqFAMB1UP9m69SiTZVcA2XdkoX5r0fBJ/4I=;
	b=FxiHefqAZZP5af9RVrdRs3Guh/Jd2Hz6SAmwlywRydjl3xyiRtYwe74ufUEq8Rld
	lRXsHqX81Ehe2Hmqs1gmMftqewct2s40VdYTHtAAs6AusDHa3lOH/d6KVQxtr+3mt2N
	pcJ8be9+cyga2mAqCa4Be8L1s66tZFwoT5ACEagE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180605979a9-9d22f630-4941-4330-8306-0f51cb594e39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80bd8078f170a373a8c20189510ae46906c7cb6dab2874d44ed302fc39b1fcb4
Date: Mon, 25 Apr 2022 10:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650883918
