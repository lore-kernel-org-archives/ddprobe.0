Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1CD7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 09:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657877812;
	h=To:Subject:From:Message-Id:Date;
	bh=YXRmPCGwt3dOvHaXCGgo44j/jJSyQ/8huc3XegEdqrU=;
	b=lBTr5WnCjdZt8oneyQLq+SeLEqjWRnTRAtQFNWeF/t3mAeC+APizOSKltHVL+A3S
	oPttMRRH0n5BOZFzrrUGid877y9OOuJs4JIP/EoJkFtzhf63RrRxxvr8rUD/EazfDM7
	iuU0mUqCpkO9PV9ku6iIR3r6q9oZEilvVjKiUKf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657877812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YXRmPCGwt3dOvHaXCGgo44j/jJSyQ/8huc3XegEdqrU=;
	b=NnrJJb7u8aCawbkp+aUBlUeQiAPXNmqfmevVTcIkoOZpEsjRIesc5fN+ZiizZyiU
	3C4a3kjyEtP+MoVw1bfEEvRuY8NMRRAHthyZ6SYdQ1nrXh5zEugPZmil8CyTrLrJPCv
	XVE5oH07gILNAplWI0ECRsT6V+/4vl9HAljcqL08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820137d45a-7f59866b-d1a2-441e-9ac2-f489783c0ad1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89c82553fd9bc61eea831ce89804fb35cb33a406870188f491d444083372f986
Date: Fri, 15 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657877812
