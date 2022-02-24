Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85116139D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645693284;
	h=To:Subject:From:Message-Id:Date;
	bh=mZ5ZNSEjgTHqFNU4cGj86HYAQ3E6pZMni0MxWlsDXuI=;
	b=l6/tzSgcnjLu/lt9uucnojn1oVNb13Uc0oPloQyguru6KFT94v6voFrlIWGYampc
	/X6oVKp4tN9BLz+/LO5RfzQjIBqsdoSkGQwJnWhwic74qjDSHH6NCdSpjhM/z8TXqlj
	9/91mZRzchUV7SkrBi/MKFTYUPBFHQM0wteBg4tw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645693284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mZ5ZNSEjgTHqFNU4cGj86HYAQ3E6pZMni0MxWlsDXuI=;
	b=M1L1fvktyiWZcXoSy9PLx2N1IVp7VhkMBrH7G3Y5Xk7TO+tGpiuXnSwJsbZvqM2Y
	kek3f2/DSSUGMHQmwJMIxH7+jzcsUPA0/0w/Ss655q4n+y1Xpl3LJVxC8KrRbCwvH1C
	XI/0EntU08TQYoRPAIJhl7uai3tSDimW8iIg3eP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2af6b191-b7e44886-7836-4412-b48f-7662a45f982f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca01ebc259d1538a83375ce52abe7dbedfb8d30ffe46f4a8c60deedb40ac1e66
Date: Thu, 24 Feb 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645693284
