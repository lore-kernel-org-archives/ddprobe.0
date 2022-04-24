Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143DB160
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 07:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650786118;
	h=To:Subject:From:Message-Id:Date;
	bh=xQPRGK/a2BuP8KsNct0nfPiAYq1yRhiwt+a+aRvqQ0M=;
	b=Z0JrBJTG3LW2raMHm8pkGVMEEF6DDksYeMPq48C5+K1ug3gwgPW1hiDLcKIBi2UB
	q4H6MuTEccNmIugpAxsgdb2WamOstNM3e4cPDzKZzlHS5LDU4k4OIJakvZGkBS3/Fhz
	4kQPMJmTXf7V30MMWOrikYjgh5cb1YhW4YiOlgIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650786118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xQPRGK/a2BuP8KsNct0nfPiAYq1yRhiwt+a+aRvqQ0M=;
	b=H7V0fJ30IyCEJdqvEo+znO9wks4VvqGRYQ04sJd3J6a4nD4xRjqAbHuC19i0ZJuZ
	L5rFfhfKMBFUYIIcU2TewSzrceewBeYveUt4klCzg+g4E4VmtQpoVF93Amky3yEXFsQ
	yb8ZJrGwlIR2nNOmAPwacsa0c6MngBhqC7Y32aCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805a852aa6-30c4329a-b8df-480a-a2e3-b8f1a76f1d9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ae9edfdf9e63d4715c444ab67999daeac7d742265c0bfb3fd4effa8d1680916
Date: Sun, 24 Apr 2022 07:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650786118
