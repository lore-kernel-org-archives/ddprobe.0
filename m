Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844C5182
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646101884;
	h=To:Subject:From:Message-Id:Date;
	bh=ctJeaKB1RCS8XBkpfyq58HdZjyLW5/H7iBzRYZZ1urA=;
	b=bWNamHT08XGwb0Kh+VTr/wq05kDGxTWuMe4sGTCdYIB3qulTZThrxP+Q4nwJY1DE
	qU9yiVEOvy8Y0WoSfMfatFdY/gBkrCIzqXpGvKxMLyz0LM8Oa3P1EAGkB7dqRxxyaZr
	OdOM89KU/GQz8pzrlsW3ue+UCIv5kfdOFi0S6Ac0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646101884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ctJeaKB1RCS8XBkpfyq58HdZjyLW5/H7iBzRYZZ1urA=;
	b=UvEE+SuoEmL22ARU1QF+9mt585xqo+Je0RryGdWgfKo2EI+ulPLM2z/2z6hwM8EN
	V+IELCo/OURHhkTDtV3ef4cxhEpjBO4oIDZNol8cCi+qwOJkc+xv34/to/JaWPVmPvQ
	5rngbzPgXHGr3LgGsze1BTrTnNys/1SFA4PSi8vU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f43516f32-86091e34-a46b-48e9-896a-7b16386df082-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27fdc3c9a3c657a91a74aafc25b24c6f2329a6d60775183c93e7102e7e65c939
Date: Tue, 1 Mar 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646101884
