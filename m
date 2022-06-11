Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189D07F1
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 21:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654983299;
	h=To:Subject:From:Message-Id:Date;
	bh=fQD6n2U9BTg/iB4M4+S58lVMuy4RY+KIIMubYiO0BrA=;
	b=jnqWGEeG4Jus196tVHnaCH28xWP8qwicynCWqaGGqPCYMe6mYtXEqhXW7/mgFB9e
	8yKXhOnic/1+NsLTHvRkdQ2DpvgCoYpE74CVO84xnt2fuDK5sKE7Eg8uazf2BtK5TCE
	DuLplh0S6+Lp87UxQeYC4FFOx8D7aIAkh0VZNaOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654983299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fQD6n2U9BTg/iB4M4+S58lVMuy4RY+KIIMubYiO0BrA=;
	b=TzvhVI+7BPUC41JPBGRySZ7U5CG/efLck5cNo54MMbBEqdozy5xVbVMIj6Ee7Eej
	xHBXimB6unwKMc8D68PQhemab1xGKfel6ZJB92IhkcedvothkC6mhezPWX7K2QihAaF
	uQ0w+DHOk1Yy0nKwmMqM+QTYSNKHuwAI2MdzLl4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018154b110a9-518a973e-5502-4f01-ad9a-6c8854c0529c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c89cd345526ece61ae727fcbda4656c868e03ef71609d20d135a517b44e1359b
Date: Sat, 11 Jun 2022 21:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654983299
