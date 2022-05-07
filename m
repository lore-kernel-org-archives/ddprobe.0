Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B1A7F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 23:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651964638;
	h=To:Subject:From:Message-Id:Date;
	bh=FphuRdIjRdzqvE1k1vcLzCUaaYIjPMYFmIsTi8FWY+U=;
	b=Iv1YFfxqbHx97FpFSexDOv/yKGItOnWQ6co1AW4Xeo/HP0HM+gqgeEgl28+aJIrg
	zocejmBtEfPmA126jweyMl4ZZeAx80uPr372ZT4i8RnASkB8Rwp0/5+/3u79tCCxH4q
	mZ/leNvv9dhuKzxElE4xSCVX3QsmWokjr6E3bSC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651964638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FphuRdIjRdzqvE1k1vcLzCUaaYIjPMYFmIsTi8FWY+U=;
	b=frNuyZ3FJsnVHZ7vyMMOJUm6Ce+31gKyNflBf9I17RJGqRWYPKlWjCkN2oeVOU3D
	ZSmwzeosG9E4mXM/wuAISVZHoarsB/Axtp+YyQWlqNVx6jlJbzo02cYVjvqEqwa6bki
	J+dasmrHk53runLMEq2ylIcXIK8YGvq+He5mBr7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0c3f50d-aad68605-8140-4b59-b662-e4e2edbc66eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef43ca217e7939d84de59128032af0c7976c448b76245b4e9cbcf88011cafb20
Date: Sat, 7 May 2022 23:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651964638
