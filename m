Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01540257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 10:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656413812;
	h=To:Subject:From:Message-Id:Date;
	bh=S+ueJYU97I4hzaC6VZnOi6NTRyFS6E7tfo57WMSz8mo=;
	b=TGf5i1IsRt/KMJRi2S8w4S+Gy58xzqf6FIayIOvf50CiDlRGACobMfJaExZVfEST
	6axpvaHd0NHF4x7IcbaYC6iRJASZrSu+Cqi1HiguvG7OywzdPt1uQnlnzOPBLtUBo1e
	YliNhCufzSDRKR0o2FTd4e3FG5pE3v+2sGvfC5hw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656413812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S+ueJYU97I4hzaC6VZnOi6NTRyFS6E7tfo57WMSz8mo=;
	b=bxrm7eNFOOLgPR2fZsqH7PxKP16WqraXPg0zrSbih27ocLflM6zoVcCTadP9VkaK
	tvxN+iH88RbuerdBUD4UxdnE9dZ0DNnOKrqzTvtb4GuRq1wMUYf0YNWPcUqIRWunFx4
	8ATZn6K3YxyaqjwaPdL71D9iYoBZWSltP613ag0A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9f4f63e-8ca87bad-e57d-4c92-b772-abee16fe28b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d997a60fffd10ad27ef52c0d8ce6bf8cc70258ca69c551ea0aa0c3a34020d78b
Date: Tue, 28 Jun 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656413812
