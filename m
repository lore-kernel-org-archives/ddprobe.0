Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0207919B
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 04:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651639558;
	h=To:Subject:From:Message-Id:Date;
	bh=aO08xIrpxlczPRoAHbDBox70cav281I4IpeQsT3H4DA=;
	b=mJmdaQFhqG4dAAB1kusYf+WEG3NdSE1fO9EA+Cn3J902Hh64OHLMDRz29+6D31wR
	YvUPGpC1C8ALl+dOZIwE1u657KMTuyuNOX0ulQ1fPRuXHbHDJ0bZCazIP5tyU7b5ykS
	vub295fg0GrudZkJTsVpoMMS5gnizEh59t/xt+vw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651639558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aO08xIrpxlczPRoAHbDBox70cav281I4IpeQsT3H4DA=;
	b=Q/RLMDU0rYurzYiEJVo03gsHJrXhWG+RORIA9sPIcyu7o4gNpHma5+owD1CTaYQE
	WUsNYLAMXT9JqFD/v4EmncuRFHiKDipcYbteHp4jQrGNTBahDTGF5nYPo69IAyeTk7+
	7ygcv3rXGTp0bVmeD8CP1Mhc5OTraQiciClh16rA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808d63a094-3f705eb1-93d0-4a4b-9583-de37e86899a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 483845f57c8c79a2caad58a6927e6bf705bb393ecab561053f2ae53eec6ad9d1
Date: Wed, 4 May 2022 04:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651639558
