Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2F91879
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 22:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652048998;
	h=To:Subject:From:Message-Id:Date;
	bh=OnVtz25Niad9HqZyTk4i6zbpvokfj6nWvNQyc6x6QVU=;
	b=FsSqfe3dW9w/6oeU82u/+TZHP0ljb/9y1wn4xZIRXv7SIOwkViFGKf+Z43HmKWM+
	TSWI80W3zLMA4Z05HNJDqoN+agovLllb6QNywHNz361RTCNWvRo/eoZl7x5DNBu4+1f
	3I82gCc+xodzpwNMzCGcmavqbLnvT0IQHOejSXaI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652048998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OnVtz25Niad9HqZyTk4i6zbpvokfj6nWvNQyc6x6QVU=;
	b=euMmO+j+R/9hW9RxJEUGBSm1ibkFNnmjXAsihDl2Sxs1XoSfbx3kYQNF20bEO/M5
	GPVbfKFbet3YvtPwHOPi2Vx0ctLio63Ad4rCKW4LkPcLZJGL/hSrsJ5vuwseotz27L1
	7C1mWpZWneEJjxiskowkS+kfMM6x5CC45u+t+0p8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a5cb2f8a-fa96492e-c292-46fa-b2be-1004f31eac37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 992c6b59465b741d49b43a634aa49aa6af7a230f99ae4c70aa57375e6569afb9
Date: Sun, 8 May 2022 22:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652048998
