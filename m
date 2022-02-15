Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9217C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644950484;
	h=To:Subject:From:Message-Id:Date;
	bh=27mibYX5bndLbJ4HVlvrBgW4TjSbCLrHqm/L7utg+DM=;
	b=J5hDuYvhyc/3LEoqhtukdqhFqj5ujFE8Z7G9ktalWrf+h+NvKCa698YRZE9WZgHe
	a9Ec9ge9qbNGRLv5uJSpd/zU14ar2bRmsY3VYs3/Cw2Abj/v/oHZPr97SMcXf2a1dLa
	ZTAlt8gR5owqof2bvabPPrDT2V0G+2GaUnwWHSSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644950484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=27mibYX5bndLbJ4HVlvrBgW4TjSbCLrHqm/L7utg+DM=;
	b=WNSanIpdTNTCFJVCbN2xre/fjuOVDSADuXq5h5miE/Df/pzk1B8QoF2mLJqS0fjt
	OiYLJX033/IsS6L90zOaxFYVjUF/0I7W8plU5md2R2rsWoGI5ClDnZStKcxtvfQxmn0
	LlGq2uZliDXJ8SAwNdLMetLppY18dlrInRUGXE+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efeb07726-9f30ba03-4b49-4dd2-bfb0-9d4358865d3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 059f1ca0ed5c7d5bda77743def4e265ad5a70413a68220744ece4ddf4e5b6584
Date: Tue, 15 Feb 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644950484
