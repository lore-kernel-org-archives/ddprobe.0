Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E3E7B
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 15:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649690818;
	h=To:Subject:From:Message-Id:Date;
	bh=klbruCIZx+Kdbl12xbfIZyKFLCG4MsOr6gXuU+kBtnc=;
	b=MHMtLaII/ToelVmVj1FtCeyiexzg60J2rTd7qGD+muUFnNg9TV1bmnC1DbSkqlTB
	k0fdVSwCMM+4NTuJE3/RMCtLh9Y5j9TiGYLu71yaFAt1hcwE8krOiYN2Dyw/yvDBqV8
	PklO1kwXFflM/cRP7hIV0fJtJ8cFMtPWaFFsIPmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649690818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=klbruCIZx+Kdbl12xbfIZyKFLCG4MsOr6gXuU+kBtnc=;
	b=j0xJV2Fclhzr8TrDfEgjflFUNi/YHWsR9ZXFLDwcq+5qCZ7tu1uvWQZucfSPluGT
	Y+LNuKaf9AWEeR0CzSUzL/UuKOWFUuH7DNHSbFaDMnHoOWK3OxnJRp+X+W4BRD0nQZR
	h8GzSDTW6QggsxuzLkzNG1tCoiWUyY8j/jZTLtTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180193c3705-a4b633ac-344a-4359-be45-cf6faf7fa8b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84922d4f31c21f714a9f88013db8c56e6fc4338d3fa71d50c83b7a7b30af2f23
Date: Mon, 11 Apr 2022 15:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649690818
