Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC2620EA
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 03:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649303938;
	h=To:Subject:From:Message-Id:Date;
	bh=sP01/qy0azxYv2VXeYKfABY/XXed2WH3Gt7qROM1Q+Y=;
	b=ROSMqYEs8M+3Tnfzf7kWtpT0un+z2kZLRXg1iRJD2M5nMImZ2wuhUVh/rZNexdyx
	/1ZijKyCdr1mINjDWWQigU27YXfEreZVScBGBJHRnbVpSoshNoXuGCumB3xKohu08hd
	viMHID9vR+ZxlrhGGIyf9uUvjBunfCuIZk5XJXrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649303938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sP01/qy0azxYv2VXeYKfABY/XXed2WH3Gt7qROM1Q+Y=;
	b=OaQI4vp2hVzSuhSRNuXvMnJfwYoVukNTSvPHp9ERnchg4MTf7BXSIHxI1UeweG9k
	cU27xnvf4aERl0iMNfxEctsXvHlOgAuwlGhCdmXrD/IXdzvPfGMnScTA8twuKI5uSIz
	C9z2y4IIGT9S66Yrnl03tsxCiHVYEFK+2YFKMS6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180022ce4f1-65f3ac1c-fa9c-4072-b978-1805dfba8d6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25f9cd9de46c6f723dcb68685ae6920453f53da234be55c92c47f3690840ea97
Date: Thu, 7 Apr 2022 03:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649303938
