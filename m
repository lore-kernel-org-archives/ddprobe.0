Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6B315A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 13:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648386118;
	h=To:Subject:From:Message-Id:Date;
	bh=hmVZcjSWp9pDOAjl/tLOf47+A8mWtc/ZLODEWTA+bzc=;
	b=T1Kv9oDZb8yjOn6IgeNhSH+tZ5Mqe+htwXOrjLZPAGAqLDdlyw92+wFmxacsrOg0
	9w/PRJIDgnuvDe2bk89JSLzoLzfz0hjYfVXdhUHkP+EDS1NA7xJvUGjmEkCV9fyuuKk
	lYqyf0GDjKdHcr6kwCmMAUunufYdSVI+HlXpdlNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648386118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hmVZcjSWp9pDOAjl/tLOf47+A8mWtc/ZLODEWTA+bzc=;
	b=kJASmGmT8s2QOmIpzlbS8E/U0OdiUbRBuQRZpw29CK3xkCaz3hGZ133IHZJGA0id
	1YlyGdhNCv1VCdVrVSI4EVVOeRVnoYUC4KEiC8ImHpXJJ37h4xw9WZIKFLEK0/fXFOT
	5eNmIG23NB0QrOFRrcpF/SSjtKNb4wE1BUkQKbSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcb7812bf-14502dec-458a-4e31-af89-a501d7f26ec3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78b23d73a7c7f615d111d0bb04af0ac5ca48024d80c006241098ea3df4931c30
Date: Sun, 27 Mar 2022 13:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648386118
