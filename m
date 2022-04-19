Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0AE7A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 08:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650356458;
	h=To:Subject:From:Message-Id:Date;
	bh=xJMk+F/byTTmgkFe9vJ+g1+ymYz3NgShs6h6YY8RKlQ=;
	b=F5lEROFD4oQRG/eCgIiLRu+fZFD6xJVdZCZbkwEXM0zc8Pidk4RyeTGqAy881v/6
	IO30Wb03mhpkpelw1kit4NqDkdzdxxZCJkoyPH3NeRU1QRaHX27osHuslSZWgM1LDij
	C9vTMWSpBoTptrv3sNjT2swpv+3xnJwYl316wYzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650356458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xJMk+F/byTTmgkFe9vJ+g1+ymYz3NgShs6h6YY8RKlQ=;
	b=JP2RUxmFFYaPO8BOaBbYzGnaUIgOz3dlqSruLwdGbvLUw1KvWj+TjMcNAwd+H/pe
	ivX+hMTs6o8s0yiyC8xl76bimbFp904R41ltyGEffqVr94y81yO2A+9pBBdOZfVwbQA
	5LzUs++JwB2C11CXr0uQIOnLHP0GYFvFadXje8UY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018040e91357-53fb1581-01b1-4c79-83ee-b658851f21f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a093efb39a46b701d2d18b4bc5b0eb09310f214309759436fea5e81b34da69f4
Date: Tue, 19 Apr 2022 08:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650356458
