Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF27E2572
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 06:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647759386;
	h=To:Subject:From:Message-Id:Date;
	bh=nfRLqoYk6J2X5mhmmLdL7lDwaOrxCIke+LRxL6ZhN1A=;
	b=YDqWyXb7ZVZ2Yt68W742dIsHg1QzCQbJ7BxR91vdXIzWG5iejUsLGry5+KtaPx/u
	Ajo+D98ughORS0+tl7Mor389i6VF34VR/bVQGGtHe/3EzD23gtJ3Sp7YLot6VjJN+Qg
	cV2ZPMZ/03Tb/zR3HA8fR2F5mioOkqpc1InesGxE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647759386;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nfRLqoYk6J2X5mhmmLdL7lDwaOrxCIke+LRxL6ZhN1A=;
	b=h4l+Lfl6aHANBrBJotyp63ACx2szHkFoQqf52ITHsNQeMowe3ubFmBfjUmy6g1m1
	QkMZg4ZoPQpjpomGItVmgLC5NTWC5w9zzkd7hLeqLy+CuuNNReCxGr2gJnYxPdHfOBf
	bIazX7ja47/Fid9R8Ktd9tldTbKtthS2R1mVmkUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa61ce08e-60a54b1c-840e-484d-bd16-f0e9cf765e27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5afdbf5043896ed70f1641fb4a919ade8c04db0452fda4a10249927f16efe308
Date: Sun, 20 Mar 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647759384
