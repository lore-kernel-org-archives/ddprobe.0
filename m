Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76047A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646899584;
	h=To:Subject:From:Message-Id:Date;
	bh=PiOhGhIZMOZ7W174MK9+FxxY3uC0se9qcN+S2pWXnNI=;
	b=fSF1rLqtaqeh2v85/+xS6681X8OiYOTBCte5jRS3br+KrgwCRQz/MoOHkfI5/PWh
	JLiFQb6Sfc7SyjZ78Ar/uZdg2No5/CUbbcbNcJvrSUx6PMF71omkHoBMdCYUYS77d0+
	pOJ2q0PL7swqYPP7xkI9spvozw5NOz5wxZrM5NyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646899584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PiOhGhIZMOZ7W174MK9+FxxY3uC0se9qcN+S2pWXnNI=;
	b=KGtdu0YjbcviIK16XDn/aTU1XJV4z0oY/1XDcm4JrWfUaUzavsQ5kZ9Z00spFPd/
	TPNzMYsKuKDutT8m27GYoCbE6fMDFezGfOSIKE69fLWFK4BzDujlrIJMwzizD8s4Kgn
	OBFQpf/4L3dZKt4eKXtUJOlKxLK7pL6cjuSw0XBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72dd5edf-1810c92b-bac0-482a-b5cf-ce1e11e3bd79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 852c14ac43ebb5e26374e5910af9ef01040809c2598b6950c9d6701c7a5a9b13
Date: Thu, 10 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646899584
