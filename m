Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381B1366
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 06:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654063619;
	h=To:Subject:From:Message-Id:Date;
	bh=5PsOWB4gg2Dt8799Y04MKrN9nmhBNPyj6ELZUNUSeuE=;
	b=OXrUHb/ApS8gd3vflPpbvMIliqS28NXAm4nFN606jY1JRFg5Z/GsBIEdTwmnNnD+
	5XUoUk/xyyB+uDWfpmifxjnnY1jkD5wr4hz5AqSy2DXuSSZUG86kLWRrdVTkKkFsLrO
	IMEzlZFee//kNps2jMag7I+twgfF8KuB+8EAlkDc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654063619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5PsOWB4gg2Dt8799Y04MKrN9nmhBNPyj6ELZUNUSeuE=;
	b=Q1AFcIa81WYmFO/pRhQ+5iFuEwYZuPvw1BzR7MxuDJHw9KLB9cssrD72jVm8DpJw
	ocLeiOdd9SUuILNZBBcdBR6yTaKKII4ijCuFWHO4IguFqdcJiGj+NEgvx/bEdL8JM7b
	+L1Odyd21TQhvUXI/QfoaztJL+ZygLa00NRnZG9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ddfdcab-7caacab9-2a86-4778-b35b-2e028e0170d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 325bbe5da6cdbf22ca6cb6dd6c202a79ec4117a1a202d27e2a193d0057bb21e0
Date: Wed, 1 Jun 2022 06:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654063619
