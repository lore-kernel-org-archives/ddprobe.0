Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80BB2FAE
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 21:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648417198;
	h=To:Subject:From:Message-Id:Date;
	bh=jhuWrlnIyV/wbRBldHx4xPLYDk6QQ/ceqCGc6254pwY=;
	b=BtDiRJdNLmk0DsoBm9yqeLnYje6jsa1AmT5GW2/spaySAbqyRpMuCTI47e9y6dw3
	8Ap5dLyjfHQjGK2A7wJo5TAQlk9n4jR68V0R4xyY3GaZipqU+TTZr889l7m5v7cOkaM
	wd/czAKMj3g3CaKRR2HulQDWbh91Y2b7z7ItBH5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648417198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jhuWrlnIyV/wbRBldHx4xPLYDk6QQ/ceqCGc6254pwY=;
	b=O/bd1OYkwBC8tK9SeUm5n/DULralvDyICSPLxzUb72vhyzv6V7+2y9aA5oZpKGLJ
	h96T2Np4XgfCDs4s67eyYnhc/Ezeac8llHe0hunsFXtxdA33j+22qQcOFrRi7b4tNpi
	Lryqqar2xhP72yYSJaaJcsN2lzLXZ5KMBf6dHWuw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd5250c0-c8c8ba57-6869-4adf-8463-7956ebac3575-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08bbae631045ace31a804ef94e7d1e391b90aac04c06c65c2f594b59b9d6a5ea
Date: Sun, 27 Mar 2022 21:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648417198
