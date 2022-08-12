Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0D0399
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660287052;
	h=To:Subject:From:Message-Id:Date;
	bh=0jTYMMouThRXwAmXOT73U78/p/rnE5cdWinCdGFS/cw=;
	b=T578ta1Mx+O4tN3dDCKrJsM/VuLrZ8Yffo299m0IDkJ7pyt16K8P4BCvnSDQoDN4
	J6dGa3OprTEfo2X2/M3DAuzsGX6f08DuMe1LxBM5y9uvNbfVLAXI2Op09gTxbyiordK
	art51TWR9pV6DB2JGJZwjZWVI9bgoTy1NBkRrEkM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660287052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0jTYMMouThRXwAmXOT73U78/p/rnE5cdWinCdGFS/cw=;
	b=I7nVHw0wZ7ZGO3rs/foJndDVB3GzvUHMrrO5FJexj/WaWbyPe8VcxbaL+8B41D7c
	Z9oH1Ksmav83mzwdwQF1sXM/ulSJcAHWh5U5GAYAto5URmAXe/IcgdurUL0uvnsPVCg
	9q3fJvEYsl+e5WmffvmywmounwrEF6CWrgrfnOWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018290d1eb09-f88c731d-849d-42c8-88fa-a1ae452d85e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 696046a803889a9146cdf0da2a09762b88ce75aacffb16de7cd8eb582802ef59
Date: Fri, 12 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660287052
