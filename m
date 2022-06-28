Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C58B33D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656424012;
	h=To:Subject:From:Message-Id:Date;
	bh=ZbPoNGuFJLs9HlG01JBPeVaPa4ZQ24YbMn39yCkPHLA=;
	b=G0cfJi+D87W/6R+A7vCUDTjMPDpo6FFcrlAF0JotjmtQ4AzT9TJp2uMZCbHyMcHn
	bKD0hY6CIiQKbAwW2pe2mBEODJjalA/wtwfHKkFFKP7p24Tm0ygp1PZ1NKw5bcWdJhC
	Mqnsi7TCdPSQLpeTFhHA8oFiY5pAtdy8ZdVE7sk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656424012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZbPoNGuFJLs9HlG01JBPeVaPa4ZQ24YbMn39yCkPHLA=;
	b=bwyMg7UhM+muFL5dP/UhftCOvDxgOIWL2zUX8sYABw70ocCbVi3htm/Z/4K050n/
	bHs5g6+iCTXZ+sqxbTyFgRLsu2mXHc/viqK7KyQMEZ36g+M3n1ZmfetWAp08//q3AL4
	MTKmGC1qRfyy2UGt1giz4iOwG9qVBgtzFvCx/V6M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa9099fc-e6ad1532-f4b9-4dad-876b-7ef60674e84e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9c00c8eda28b49b05bcadeb6f171d84fc0496dd94912b25b4296650ac7de095
Date: Tue, 28 Jun 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656424012
