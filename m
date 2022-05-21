Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254BB18D
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 09:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653124259;
	h=To:Subject:From:Message-Id:Date;
	bh=sSXIaIhuW8MoKPSJXAocMe3WvlHuLmm5htnWLsFB0JE=;
	b=bQOfE3H7wPbKlcG2FbFMhHOUq/IwQqBhd8X0oYuYM1VSo9vnoVtiZ8tmDICXfKcR
	KR/9Ucfk2nq53czTX/UXMmIzgpO95IqJmWI1P8KusmSO0aAnDCKSOw80KUsrRUuuoKX
	H5KCxpNp5bXOI//gi73bHavZzkNOHZXvLJRt5kJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653124259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sSXIaIhuW8MoKPSJXAocMe3WvlHuLmm5htnWLsFB0JE=;
	b=AojQTXOMt8VYgrB4HHobg7dgsyLhU2PSXBcyVKlz/h6ydpHHIJqwhBIWpSt//yfz
	7KwqHbDTV6Am8CSCboCm2ydZ1GsEhZJI+IsJd5SKCAnBRlw9QksB8o0yj9ITzv0g7Yi
	ohjTP1Wbjdx8KLvNaT3GUJM0p2uADk2PkTFL6Jt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e5e25dfb-10b5a022-003e-4f23-a333-bc74fb3a4183-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83123e9e58448a6bb135d453ec980b172de20ab7975b7a998d1e10e5b9e19fd9
Date: Sat, 21 May 2022 09:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653124259
