Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9150C5CC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647026185;
	h=To:Subject:From:Message-Id:Date;
	bh=PZYpeKATQ8j8+UC9dQrhOiIgH+bYtDEbtVctzoafqw4=;
	b=gkCPGwe7qFhwOGymHlcMFSfML5pTLuxpigKZSss/oSjlVIjJL4Bu1ufZOLKy8WA3
	b8+m9N9nC9pVEDIcKszaQzCTHlLw3L93JSm80KgHHi3/FmsLTgHef3QY1oL8C0QEIu+
	Qa9Lvb3JnJ/9ENvdTRBrspOfXNPzXw0Oty10N1mE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647026185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PZYpeKATQ8j8+UC9dQrhOiIgH+bYtDEbtVctzoafqw4=;
	b=Wr09hU9HCkQjLmGtnb4BN4uMe6l3NStd46ZdHy7MspUPYIM+bpxWOIzsWta0vzau
	jdeQiB53axQgkmCO0UHf4akCHd4F4gjL4mLJ3dGgL8LxIjpgOjPex7apEWzBVBQLrXb
	yicAtDdJFVoy93hJkwCIqBBnDm9XnfcLeU7d/+dY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a69229d-b33b02ab-bad3-417e-9f0d-84bbadce5fb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 225e847511f10acbcbc4601ec476d2af7e01ca1ed3811e69430d5fc64abd1e62
Date: Fri, 11 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647026184
