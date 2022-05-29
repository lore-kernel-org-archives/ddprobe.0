Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194457B
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 21:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653860999;
	h=To:Subject:From:Message-Id:Date;
	bh=1RedszrSFu4HDglk5ZmsPbywGvw4pl5tLII+MzRCh+0=;
	b=d+xV+dztVEdI7CcDlUBbF0WsJ5diDwtDgUppgZL+ZEAnZaM3AH62ztZ0Bv4MG9Kg
	RnanaMFuO2zuUh4EvI7i0lAy/NAAt3Gi2g4oLw6/9M2ylpJ7+f2ND4NxzEaBU8hdapw
	28v0tyh43spVGal11hHHfZUOSD7Cpf/dzAseQcAk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653860999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1RedszrSFu4HDglk5ZmsPbywGvw4pl5tLII+MzRCh+0=;
	b=TaA88m0WXhrdbwk96Fz+ePzc0BGMifEJW9cZFIQ0Brco4vWppNJvXX8kggmloNqP
	uVTpF68cqbVMmBIEZXzl1M6eC5d47iOTyaYFVpKJtBaGfA8sFgRqDJY9b2RRdUub3XW
	b26cSRjQCVWkYyIPqRh8vn0x5NdFY34K9uDlkDcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018111cc20e0-5840d58d-fab6-4bf4-aea9-ee81101d376a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8780c8ac3ab630ed96d58ea7462de9042df75fe81888654d40be93e1f5df9a93
Date: Sun, 29 May 2022 21:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653860999
