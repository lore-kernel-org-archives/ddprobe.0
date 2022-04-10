Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B2CEA1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 03:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649562418;
	h=To:Subject:From:Message-Id:Date;
	bh=iQ4x5EcjZhSQDHjK9xhCCSnf4XfTjeiL3nGDY/Hqwtk=;
	b=cZnalH8IJM6yeFymM6rueTEPArx55vQSCU2+CRq6q0jvw7KHeAkpdMf4a+6uSLqf
	iAlE+LxOeD0IjP0sZho6KUkkZl9iKuv6W3mEcn35n/jojBXAsY9doTaegXzhPfcsTIu
	8zcsN4mW1QV9kvSWWgsV5LHPnhQ18WV5HJUpcsKc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649562418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iQ4x5EcjZhSQDHjK9xhCCSnf4XfTjeiL3nGDY/Hqwtk=;
	b=j0LV4A6nFGdq8AhtQ+xO0XxIc87n2a2ViqxPPJSyxfFr2Kuc4DJfEbneG8pJK8VD
	JxEQjKNPHRSHjV4iy9UGwjrdZ2LOKqDRUSThT0eu17PfDm/7Oxewv5Amdal3VEMhmjU
	ToiddacGqTD6OHURRz+0Pzp0V397abO9G8A4qCC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801194fca6-686229c2-4ca6-427e-9695-714e14341854-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfe71539dfcc2f3c712cb6eb2896673086bf1e689d0e7e243660e20f80bc36cd
Date: Sun, 10 Apr 2022 03:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649562418
