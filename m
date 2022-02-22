Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA4E7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645548085;
	h=To:Subject:From:Message-Id:Date;
	bh=n+jZ8wIoLGOcE+D19bo43VJG2k4FNOTbonPzcQfe4kM=;
	b=GcuorlZIuQnwgVmPmaEiGryPACnHRakvRmJf0JmRypYqMPHLY93vUgKINv8u2Ph/
	3fdCy9NgWWqWDqoukm2K2BTE/oSMwil1jpP2H8yfdB5qNmmaNEO+KAqRxYTgnnZlhLq
	kFvKmA6fFxTLyFZd9aXZAMPqaKnCKsXtFW6b6GXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645548085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n+jZ8wIoLGOcE+D19bo43VJG2k4FNOTbonPzcQfe4kM=;
	b=k3R/eCz0uiYi+yuJFP1gprfCIBhgoyDlt4pz73YOjCnzkU//CeT6Vd+zF5DlhWZH
	cOpI6/cbkY7iiHD5w4SWRz5hUD5HEx72+2/Qb8VmW/GnVfyOfdQa8SBojkHwMwcRPWE
	NNkJqukqJ6M9tczZrxm0nshRQcVc8PG1/ndgROyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f224f1e70-9b93ca5f-c282-42d9-9bd5-bfb39174e5ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83092ab53dc86f08505430af08ea59d221725ff887d379105467ff4b529a0a60
Date: Tue, 22 Feb 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645548084
