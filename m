Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B371FA2
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 21:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648935178;
	h=To:Subject:From:Message-Id:Date;
	bh=1vP0gIN2w2/TWykSgTsM6ZdKfcm5g1zaxEBSrtQKuI0=;
	b=Df/iFMJgxvBCEMLzvW7tyEJHejBl/xAE57GuqxnF3A0AaTiCJdpmv/CFElA1PkK9
	K/zjiSnLej/gaJWGAlJri43rwK4ZuujBystg1dObF8AqIVn2X87V/Ch00aj42LVLqWp
	KoJMONbhsqKpqKpZiGJFomw1HzLULpkX3DawvTSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648935178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1vP0gIN2w2/TWykSgTsM6ZdKfcm5g1zaxEBSrtQKuI0=;
	b=XCAatlOmxQ/U1ByBHVW7uzA3HKgu15qmRGzMcU9Xzjo2D//4qk94QEaI5C7EVZ3Q
	fMJ1QCR1JazY3s40J1WzmbrSlCRiRqKs/ER23ixE1a7XWUnZexoz9TdtPW2MUmA2mJi
	dC+bmPuQHTEaNQBFTxYCnmsNuFYh81qL1xSifwCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fec32104e-63cac28f-74c2-4dde-8ce1-328677c770f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2b3585e41b5fff10413c9124610501e71228a51fe101fe876debfc333874262
Date: Sat, 2 Apr 2022 21:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648935178
