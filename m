Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FF1163E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647881484;
	h=To:Subject:From:Message-Id:Date;
	bh=OqWg9F365ITpAv5MvLj7KV6BiDXsDB5MeYidk9anC3M=;
	b=WN5EM1vY3D3w5KBiwfrz76z+pHRD0iQJPu9nCGoEDdn1WQ2weSOyVTt2lNirBnzv
	IejPZHid5ZGIn7gBagRJaCuu5exYB6TYpvd9nAm1I6KP8y77v31o9AxAIialoQEHAPB
	+Kmf013DRwVdtM3oc/NAQn17Y2oGNS9HIkbmI4g8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647881484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OqWg9F365ITpAv5MvLj7KV6BiDXsDB5MeYidk9anC3M=;
	b=AjpK5sxBqoVM4RPDu+ds4qt+xcIDFWQKbd7UiNA+YWg4iSkXBat75ipm5xTwYj5D
	CyDr6LH3FLePO+xqSLMlgsu7klS3rn1O7ODyBHdJ2dego/wemnlaww4B2h+S7sZqrRL
	lVb3bhyD/VN4tSpXGMkPetEWz+qdV151FtcsRb/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad63f9eb-9f4b11fa-6473-4df4-81cf-95e19f298508-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36ac91f9b9edce269080779c013d2b2d63e488a5cb9eb11b13ec38bb35786153
Date: Mon, 21 Mar 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647881484
