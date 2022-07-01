Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5E21860
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656711412;
	h=To:Subject:From:Message-Id:Date;
	bh=aWXqPHfY92eeNhR2f4RCmlF5SWYfygqwL1pu3QkBaI4=;
	b=QUTzdKwOoysMijGzWHEPpvQsG2cuSFcLaMfazENUwloD9edABdm78RXCOk8UjBkm
	lprRIBFtiC8ODDN8V1JCddUktz2F7CGHM7vVOkGkBxbnNgCjMbjFa/47yoJWZwRCWb+
	pL1Wvtrjx6Cfj9i4AfdVGY/mdWNvcpuqaEpjrAWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656711412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aWXqPHfY92eeNhR2f4RCmlF5SWYfygqwL1pu3QkBaI4=;
	b=VKof/IY7ytol2Gi3/N7JTYh7MMX2G+i5CFXkbhKm7cCGRaHzDcNuAaIjws/k3Sk3
	QqxfkRJDAel/hfN6V+ZIGkfqSaRroadDdZmflcUzrYESrCW+cHROmOGSnGcWCQ6LJha
	EU8ABvmzdp6m+7UTFK/Yj2uEcDc8lNrdhhHtDbBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bbb1fa59-46e59211-bc27-4d87-8226-bfff5af3d27a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cd99213df1b606b99b6029d319777e38e02e0acac28ad7c2e07386279911903
Date: Fri, 1 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656711412
