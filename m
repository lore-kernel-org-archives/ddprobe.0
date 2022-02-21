Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D762568
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645437084;
	h=To:Subject:From:Message-Id:Date;
	bh=ISGuuGrdW29DwQd+QrnyZ1t0Q5CQQeyZjP53XiOaIYA=;
	b=UXes1DYmJPdxQrlEm6xUUvdhUsH30xVzMs+FjTSCsU23a27tj7DUTOmSK4RgesF6
	kj3BcdbqBwYqj57BbD0pCYBsGvfoWRc59VBR+R+JcymkHv+GVMzwgvzJG6nhv6+7Xib
	5Xqpy5QDmrMZZgaPV8mQaRDmhmUIUJWEZbjsrQ9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645437084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ISGuuGrdW29DwQd+QrnyZ1t0Q5CQQeyZjP53XiOaIYA=;
	b=j8C9T8yGf9rx8I7u8f++gmtk1P14zgBITSrmhtoaCBeGT6899NpwXKwOBJnV6kpn
	m30Q5j3JZCSFptzqE3xV8GU11mAAR/h4EKqKfqnoy2xQXqpFzEJW2MRkyhxlu0oFQ5B
	O3Ana9Q68qRRqfBbZMDVRGLCAVNe8Htw0Y5SwUec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1bb16491-979859a5-6357-45a2-9b73-b8ca9ed66aab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52db9622de829d8f6a2089c790e006d257d14bfc8363ecd4d676fc08ce85f874
Date: Mon, 21 Feb 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645437084
