Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E39E7A
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660020052;
	h=To:Subject:From:Message-Id:Date;
	bh=h+7GTN7PONy0MdIqt/mX3Z28xkJzhzxvjSs4WJVp02M=;
	b=bgosMhWpw4BIoQquBsXoqKW/teypQBg73FuVG4Nz5GH7aot604n7kq/jQFtDcDPU
	YxLOE9CjlxKRmm4lzi4G43WY0e4UXUPNxBkmUC7qqr7xajt86EZYDRiphQotP/+bGTx
	q7ZVZOMlmsYafmmCPQ2nAetoMkUnTnPz1E2VclLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660020052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h+7GTN7PONy0MdIqt/mX3Z28xkJzhzxvjSs4WJVp02M=;
	b=I5KZ+ytnaIP+KO0F0gOrwzq9Pm9tXZ/yky5G9QZU3B5gevDpjf2BfMu8FJKI+XHu
	DHXlMU5wms1mqkZgUEZtD4qy9N47PGaCEuWuwxZvZxfXIqGgrnuc1Bk/6Hu/tSHPb4t
	yygjV+qrTg2vDMNo5tXVk/foD08/1hp0GN9dvkC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018280e7d269-3b925462-3fdb-48ec-a13a-4b2e58880290-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86315d3b72b32afca9b81b793f4b38e8396a63a21fa2b341b15bed0dbc4f5f02
Date: Tue, 9 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660020052
