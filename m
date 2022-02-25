Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656127C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645804585;
	h=To:Subject:From:Message-Id:Date;
	bh=vzZp/NsBoK9WP5ae/3vVDOLOscnl+tcqxWQTAv3RYNQ=;
	b=dJkTu7CUwuA+88qI2nDrvpKXxMoNiH500+WaCCQVW5/r3cjxQbRdmkXyjBXYrVkI
	6lu6J5KJComNv5ULnKFq85y/lWgU3koqSBKQxAH45Fw3plyB3xXGact5MhDr9LORSNc
	AsgBdY/rRfTJSXnqQsshBR7JBQfAaW4ivVLtMSts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645804585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vzZp/NsBoK9WP5ae/3vVDOLOscnl+tcqxWQTAv3RYNQ=;
	b=ht4Gw8Ya7aTWk8nbU/3cW4RHmYwCi9h/mzifD7Ti1a+7o8S+c/DtE/Z6fVK2kbyC
	lOCDttk7reZtx5rlqKBibv/OjpZs+McBJqAKDJO7eAZRQMIMK8/5CK+JfKfrR2QT34i
	TmB7TVao3soHP0QlyngJGXBRz3ro3JosaMqvoiUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3198ff56-f155f4fd-17a0-45f1-8ea8-47a41d4ffc07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb272e8eae22db7622b2b324e0cd4be043b174543f47c9fab705f1ce162394df
Date: Fri, 25 Feb 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645804584
