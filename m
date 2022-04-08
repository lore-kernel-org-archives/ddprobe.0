Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B90362
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 06:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649400058;
	h=To:Subject:From:Message-Id:Date;
	bh=FHtyV+koZnxsFj2a83b+G/meOCauMsEdgwvEhfuyyVE=;
	b=NHN2MLy4XAKjLhubEmheBNxLI6PmOqgzxo+ypLXpChyOjXBOUPfs8dTeTbL3Uv7U
	HVnu5pID2ScIYLn/nWDQ/16fKnU7b7Dp4iJhP+Ex6iRA32ePtWUDFefN2VO0pPBMbtQ
	fJ+PYmb3b7rsQEs9FRRkquET6l8+IrDN0R7sHoAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649400058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FHtyV+koZnxsFj2a83b+G/meOCauMsEdgwvEhfuyyVE=;
	b=N2qsrXuzVTaEGSxrDQUEZ3rlus2jMtWvFcxojTxU2uZJtkkhpfc6XkLvO4AhgKMZ
	s5mWRRC9Z1rzU4S6XNm8GZ1Yz0PJ23lUXYOjuqPjEV7rXTlIuDqGZjl6u+Dij52Gprv
	U1lLwI7mnLfl/A7TY5GK2jvSXIoVDmK86bKcgNmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018007e7918e-c33428bd-3aa3-443c-a58e-5d1f3bdc6bc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2dfa4b9ca12892b657103bbc05309944acbaba8755a7527ecf2b681ce37cb9a
Date: Fri, 8 Apr 2022 06:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649400058
