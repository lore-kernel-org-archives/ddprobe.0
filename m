Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095642C80
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 20:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649448778;
	h=To:Subject:From:Message-Id:Date;
	bh=3GwQVO1k5GlWPi3yMLQYUATid6yWEzF/WOMc8hNEmCg=;
	b=Zg5WObRTFL+BmgVZZab6b4tV4dePJ6uZXnZ+kfHXi/+WoBQDqBzy/np97lvAQ3Wq
	tNqW/YMNRFuXfTr6/y5J38CjbqE1oPaPdP/QuhXwo5CdyNjQlZqllXXdIksrHtzF8fy
	NxIiBlECF3oZVlHL2h/PNn2mvSEVD7tDs/1OZhME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649448778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3GwQVO1k5GlWPi3yMLQYUATid6yWEzF/WOMc8hNEmCg=;
	b=Pu2OLLoGandXAoVabn+xu/c5U5xVbOoxA0kxF8bKWkv2+BsrK2njDO5CmYX4Rw2J
	kODUpj5Wn0n5Zcdd1WnP8S2sdUue0y5/1D+ffCCOBjsJJ+VVQd3blgVpqreT+1Py6/K
	IbtzS18JochQ8bpwlFP5LsFVANCBd+5P+jYmrdz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800acefa25-be75dc17-3658-42c9-8e43-684d3fadb2f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a541686a39008a94fa2aab26d0b56f64555d21ab6658c64b976bb92b2599aae3
Date: Fri, 8 Apr 2022 20:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649448778
