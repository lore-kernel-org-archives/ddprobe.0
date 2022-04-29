Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD8310EB
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 02:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651201078;
	h=To:Subject:From:Message-Id:Date;
	bh=0K8vMioC60wV/Y/OH7I+Ia44kFu2ewMgGhzvk/DxR0g=;
	b=MnuXHFJAmSbgTUrpN9t/ibXBdT8XJb0dyc6Jxg6jDSSpyCzBJ3hgVdetTNSPKNCM
	tf5gaqDR6k0DR5ActWjWhEMhcY08cLbcCE6mmYjR4OXDzowrezkDKn+vdsozVjCjLiH
	A6Yn7nfMpRg2DQpPoT72ny9+sW+V4fDVA0dcLRgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651201078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0K8vMioC60wV/Y/OH7I+Ia44kFu2ewMgGhzvk/DxR0g=;
	b=jirW7v2nlKLUTGsTTbJMogeBEYFGPIpVfMNUAnTST4UbXtPLVS8bMc1kumwKAV/r
	iNXj50rCFGYtcn5DZLNTGQyBwBXi4z3oKfhO1x4DtLEHZR7RXRAPyeUUib4lMoDSCaM
	kRboKTTius1qDs6ksbLNFsLoW6NKiZiNRhVBP2kk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807340f3db-d6a2eeaf-8d9b-43d7-af98-9146f0a60557-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d05a24eb870ecd275da45bdf7cb3ff4403be11d3eedbf5d8260fa92dcf1374d2
Date: Fri, 29 Apr 2022 02:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651201078
