Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199BD6D24
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656697012;
	h=To:Subject:From:Message-Id:Date;
	bh=uEBgbHp/qZEhMIwAjw3tLZnA+8EQzbZ+QGQk3G2Y4GI=;
	b=b/ptEXfH6eZQ1w7cpesSrowMpoN41jZopxnuxwB6iUcgS3l4Uiuo0y1DeNanzzJU
	JoSbLPX/aYln1i/bwDCJkZMFXKgxSh9h5RjUmzKk+pCMGhSyL0g37RxsPWiZOO0Jzzf
	+rvYOnMReEhxwI0FfvQYGavZTsSdNVhfoN1PHuuM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656697012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uEBgbHp/qZEhMIwAjw3tLZnA+8EQzbZ+QGQk3G2Y4GI=;
	b=X7qq460Gy+L3E4wnPdu53LbBJAPGmpMRxF6dhYs5ZIY+bk2xE403mQwhhvDNHevu
	WL17D7SLSa8PaCUhtP7v7/AHDUQUJ//kZ6lDlMvyAOXY421T6y9C2Ng2HpjNt3Jssk0
	N2PC9SuQpwJ6Egq27N+5no3vKFcLJb09oWHQnok8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bad64045-6b4256f3-7669-41fb-8608-ebaa3a7551fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51277d10f594597d45e469fa74373398801280a1662d233eaa963d43188261f1
Date: Fri, 1 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656697012
