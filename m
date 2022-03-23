Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6288D1360
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648011684;
	h=To:Subject:From:Message-Id:Date;
	bh=+6iCbn9ejzPB4y98OKFt1caWyJSwME994lozbc448sE=;
	b=XEBlSgdvw1fTIpBkGMyRhP/Frcm+Pp2JvUZbzUI+J4djV6Nmmy1XqAmXtYs2z7au
	OwBgXESmXisM0UxLxjgV463VhlVKkTZp/OpM3upDTz+s+fIIPym8//yT4QLiio5hElg
	0iG8venQMBZPkoCI1mj+AP4H3QjuN68Q0xmbMoYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648011684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+6iCbn9ejzPB4y98OKFt1caWyJSwME994lozbc448sE=;
	b=h0Ww09HAaSG8UukZ8eVPN58JtfbTxGSGlkJJ0BXlA1dOl9iYvnv6EMTIYqEW8JwM
	wN8+HL1p76ST+r0dW2d1Fx8mf4qe63RFyowiyALFl91Z2XqccEveN3Ob5Y3Hl0LQnLB
	90uuEY/nMU3dtVfuKGc35vx9nuvL5y9JRXIFPn1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb526ab77-242a6c0b-17d5-4874-8b58-0bce06a8ddaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa356a2c5b023f8c34d93a247a830cf147b7ae5bdc1c608bda90d837b161bcfd
Date: Wed, 23 Mar 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648011684
