Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B4D18D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646932285;
	h=To:Subject:From:Message-Id:Date;
	bh=snwEiF9qXuEFeIGyGnIPHp201MAfW0Nkj/65hzIMRqQ=;
	b=GychiEKZ3w8+HOrJwdNdVo2bj3lgvOYtcIYmoCXqQ/KWz+3VYEMxUcs6pnrDXYQF
	lUQAAgPjhOn+Fn8IgLG2B6ZkmgdtLf/Z/0qYtN7Zdxt44DY2phkr43oSrxukS+SU5w4
	OchYW8wmw5+ytYh6k/1417M9efe53SmtJys5WfVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646932285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=snwEiF9qXuEFeIGyGnIPHp201MAfW0Nkj/65hzIMRqQ=;
	b=BAdfo26YvqC3GphWCLlWr/8RhEUgGZHH1NU855a2G46O85NXHdEhd4nUc8L1gXDO
	WdwcieAWOFdTke57lBXlmwOGi9swBnB0L/7NlA5QqewwKzQSHj7+zsiZwtjuzUxZG3/
	0gpBBHwTsms4qwK2Min2jLpfQ6SntSgqo1vqJoIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f74d05571-f717388f-e53c-4377-a80f-461c7539f9c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49296fdc0f271467c9286fc82c7c2543d31c8f0f4f16285f46aff927ca85fabf
Date: Thu, 10 Mar 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646932284
