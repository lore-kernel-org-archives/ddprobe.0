Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF1D10ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 02:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648090678;
	h=To:Subject:From:Message-Id:Date;
	bh=Fx5BwwYJkGv/Dmsx7P1KvT1xDe/tPqkm8U+yecSB5hs=;
	b=YeoKq8dgxHKUpwSbn5Z5SGSZgKBiG1uElUAT/3v7zoK/hcnXQqky6BqRBfQUm/gk
	1HQDxlohqAgBHWa0MstOHurbUONTbbbN009tjTx03+LUNRxiXm+hdayr9AL17Afi914
	iMKreA5P23NFBEyI3MhVw0FA9/E1dSK+YUUs2FVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648090678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fx5BwwYJkGv/Dmsx7P1KvT1xDe/tPqkm8U+yecSB5hs=;
	b=R7P4fEOCGyJfqPuVntkoU2qd9ivSArmlxs2Ip166yUFqGqKrbH9dycRPOcPiomM8
	l+4Tmrm2uaNSgMQ89yjkcyJPelvcQ/oVD0BkaeKvgekCK5PW1pzdr75DS2awGWNojvp
	eMx+6W2iLPMj9DAbolg2+qpaEm75yGxJ2aV65AuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb9dc03ee-17b71458-a8f4-41ba-8f5d-9113202a160f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de7d25280b6892be643143a4aa997e6fcf35b5c9a1bfbac4f8a9e32257d5c326
Date: Thu, 24 Mar 2022 02:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648090678
