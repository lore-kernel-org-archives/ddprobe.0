Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B471369
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 19:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655060459;
	h=To:Subject:From:Message-Id:Date;
	bh=Ty0btkffvC8Ti2ko+iU6zSrLnd1KjG9/pmhdO3vraFU=;
	b=OiK1/uzY4fXX1lCa5BSLP2g85eJ2clCQRb6TqJ6Nw28dPPdWZ4zhyFDU5vuZhaYY
	UNpVwSMivZd0tc3a7dN9dGditIPAWBiQh0qVGscL/goXcUtWM5XTSEZYMBLJCrAwPdJ
	RFLB3+iHdqH4nKMG5OMMrepx+VjemDtsZlFqtvSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655060459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ty0btkffvC8Ti2ko+iU6zSrLnd1KjG9/pmhdO3vraFU=;
	b=GquSIJTbVIFrdR35izJo8uwtjcVyJQdlxkYl5JgF+YyBQNVGLOoGgI6g8v0rCX1z
	DOCF+KU2o7oYj9cKR2Sr3DKnoP48DjSkxFf7heEdZRryO7Rpf43nKGDWD2WjamsarD8
	NrTuq1gZnwVARgJpsCOtTWUfwR7qn/ma7laDIhS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181594a6efd-7e8f9428-7838-4485-8e45-b6d1759d5398-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b132075b6f70523d84da824ab8f66beb50e2456edb9432433e9f51317f1db2f9
Date: Sun, 12 Jun 2022 19:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655060459
