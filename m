Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D736AAD
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646508385;
	h=To:Subject:From:Message-Id:Date;
	bh=yDVnJgnKsF4FIk14C7WliP/Y4INP5E4yNbZSJqJiuVo=;
	b=grBL42dM6S5MRuSGEMNZCSpvTbMjLLkBTFl26l0GhGeEZYGHp6YvzsvQxrjcHdRW
	NXhYGtGp4YRF6zhV97xJHpRhVNzpKuZB17MkPkDt5ob066iJFAElMvEpPp7tzNV8ue3
	4kFt9xbBr5DuQw6YM6/QCFBstp+QOWpJsBFqf6Fw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646508385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yDVnJgnKsF4FIk14C7WliP/Y4INP5E4yNbZSJqJiuVo=;
	b=J8zhWn2cge26wCnfW/9iUh2hXpBw5jBcx354AasgEzF6I+/i6u2BwQgsp7OLwyjR
	BWQCq3Q+sjYLrYbtsI4IU9JHaw89WQIAk+xiDfBMagREqrgMeGalMuBN0P/+S5vxc7w
	MSUv2P0A/H4QKI9d1MK8QVP5ImJe6Fgp5eyAcnD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b8c21fd-bcbc91e3-3cbc-483f-bb6d-fa22a169522f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1a82090544fa432b420a9a60a3cde9ce734c056a333cf6162775a69a6c8471b
Date: Sat, 5 Mar 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646508384
