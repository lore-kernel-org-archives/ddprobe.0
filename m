Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B723215
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 13:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648300918;
	h=To:Subject:From:Message-Id:Date;
	bh=tbYHcp6b3yhq2ymPsDqIhF+7IC9UAQprgyOVHL4EoOE=;
	b=RpdQ9t9z1X90HeE7jgKdPV5Y1Ma8MI3WUEftirv6aMMAhp7oqHHgG4dwBDh5Oq2o
	ONWuiMHcHmdYupJzeq/tgMFDm5Qefi5nesaP0sZPKfR4F2I3rFEGW1r1Xi5m78rpBR1
	K+Nl1/NSbUV1zl4d0rZrzgBK27oz7sbLZenp0YHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648300918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tbYHcp6b3yhq2ymPsDqIhF+7IC9UAQprgyOVHL4EoOE=;
	b=IERrx/AIfRI5DPAmI3+h/jdj3+pIORFpxKVPYFP3R65gh16BmCpr5mHY+wpGOawH
	M4SpcVWxe3s/rk/puKivHaKvlYGw3f4VbwCJJLSQh3aU6kJP0P6mdjge2G1e4XhXd+i
	Z1LwIJGqHhToE9ylcx8d3oKp4XZhMtT+7DtBRuaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc664061c-82a0c667-7bcd-4414-a7bf-44456f4624fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b28564d8394818488dcc56aa1318869e75936224d7f85fe3cfffc21585119d4
Date: Sat, 26 Mar 2022 13:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648300918
