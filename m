Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E3D7A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646174185;
	h=To:Subject:From:Message-Id:Date;
	bh=qb2V8N6WPd2sdMozUJojhkB1ZTiOUcZOHUEVhueVI+k=;
	b=VQS6bdNMIm95gJd6zVLKdeCyw47KBTZTz4t+RRNutWWPSRxoKnpZZKWG8G+bMul6
	mujS18O4Xx7S4u0MkkPshGv9G185fONyvjkCO5nhEDZZ40E6S+sGRRhuOheLE8tcdT+
	xWKcLG5WkmiXzlbuuMNHsgfgcsv0OXb2z363vWoI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646174185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qb2V8N6WPd2sdMozUJojhkB1ZTiOUcZOHUEVhueVI+k=;
	b=RLZzXdTBmOKObCbxC0T/GrH9R0wINx50l9hpMKjwKF2MxOYcSJJEX+aiT+Q7SkbB
	7m6NlIObOu1RsllgAYnsAWuNCfZBKhztadtdz3fc1jGoS2iH+DKoPXaOMvnsgeTiJZa
	AKILUkG15zyQjOCsRIdV/cQzJ4POwTP8gVNJ6L4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f47a0a530-3dc78098-cb18-4ac1-806b-8594f3521323-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9183bdda89dd878fdac6eb67bfe3f6b4f8a6ca4508e23a7af52b255067605a9
Date: Tue, 1 Mar 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646174184
