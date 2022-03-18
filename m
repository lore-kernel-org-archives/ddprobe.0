Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1EE4C99
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647622585;
	h=To:Subject:From:Message-Id:Date;
	bh=OGvo/j/sH+Jfnx2t5RLVwWqAsJKF8p58RbBavysaMz0=;
	b=m4IoJCGomesNs+5C/F5YqqNlpgjEQZYGa+kU1z9ZF60vZHpQuwCwNX889aosIgFz
	pmuq/CZXMt6GssWJzjKBVQhboqoBOqJRftqmOFUeiGoi0TzYS73sjM9HimYnTm+bnCH
	G7iVHm3gCmFyxdlSmha3TKNoQxVTZigNJpdR+cHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647622585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OGvo/j/sH+Jfnx2t5RLVwWqAsJKF8p58RbBavysaMz0=;
	b=YrMGNcISSZgFI18xKLA9THuJo/GUu82LXM2JGnJsivE/UPqmNatF8xB+LyCWokwI
	/dje0ui8+gE7E1uY841mFFDiWGCFV6UUP0+eE8HSZCGNkFn0LhS6J8GzdkcAEGuqBKT
	mPB+MwXPmi9aDovUivyAs1qBaEpCVMtMWm91mhOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9df579c3-26111297-e760-4cc8-a7d8-749134fb507d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37099a7a9df8fc007964a6535cdccc30fadc42ebc00b93fc0ebc7f7b2c92502a
Date: Fri, 18 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647622584
