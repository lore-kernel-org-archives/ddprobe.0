Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BCB367
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657936012;
	h=To:Subject:From:Message-Id:Date;
	bh=KTfSw0V0vzHKuJUPnXUzKRmHy7EA8XDI+lPmuOfycAI=;
	b=B/ruVi+NXLmizgjgLMw+pi+VqKDOjR/uiQdUjuNv65Wsdl0q+3lg++yyLoDZlHsJ
	uzG0zFTV3joD4kd/PPi4kENTby6PIhHpmwpYw0gBr30F3S7XDxWTas8ki6jBuy8wwpc
	h+U7seE5Gz4vgCh+qh9TsYw9Xak4uWhymOMnBrWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657936012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KTfSw0V0vzHKuJUPnXUzKRmHy7EA8XDI+lPmuOfycAI=;
	b=d4P6WfJ35cZvFcbKRGI3hNi2H+rVEYnhhsS7tZ2eDSxUcrBkdeISoq3a9XCpSB1W
	+g0TTu2v50PjJ0AyzOUn0OEZC10z8/rJJviS40ouc4jCI86PvKIyzRkl1P0eqWYuFkB
	Z7KHejmXI9kqCFIFVsegp5aF29/VSDTGJ7iJAN90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018204afe41b-b3a7f495-489a-4c9a-b562-450e0ca347fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53851614087850e48d71765e93c195908cf55bed7cfead1513ac4c362f39c804
Date: Sat, 16 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657936012
