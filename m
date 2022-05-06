Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC11B7E2
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 05:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651815118;
	h=To:Subject:From:Message-Id:Date;
	bh=Ea9a6WUpLD8QcPlXNs8K0GUmWIJkts+lOsPw5ptwxaE=;
	b=K816WXa8eWfJDeqf7MVg46hGVdlRWekBvKgV50Ccs3w0VL1/z7w4jP8zwK6KfwQx
	5A5zI4UcRilKzNYRfV7Lfb95qKFZt3bS3O9iOKXFQYlGycS8St1+ysUT5WRLnH5MNyu
	/ml2U84CiUTrh0RBjQOPiwUacTHeJPxiph2iFS84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651815118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ea9a6WUpLD8QcPlXNs8K0GUmWIJkts+lOsPw5ptwxaE=;
	b=Beng0rSqIW8yjwBcNzTaouzG6u+yZOt5k5YGEZmMGAdOZyhG0vkbpn0zjLnylfxL
	HzmdRjLyldDcTJJB1T9sWfP+J/y+ijMCK9Y7CWAY2PUnmhvcGjpsU7m6r6z4uiaSrKV
	xNkWEjcgfKFHUGDmfDukKkZDQv9yMckpDYWBn/tA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097da758a-286fac27-2868-411c-89b9-2a5bf7af9e9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb4dec0120106c50732b81e39ecaa65c3d21a2d198e203977609a89b0e18f0db
Date: Fri, 6 May 2022 05:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651815118
