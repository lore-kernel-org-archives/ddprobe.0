Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A355B2F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647491785;
	h=To:Subject:From:Message-Id:Date;
	bh=SPmB9uOmnMuUhWGpzq4bsLARI+9o0+gkyQgJx0m3rvc=;
	b=EiOk7jGufaEVjF4OPBTD0j01cGoYIlmZM6232+EQ03kCIOhoqgvmyXzbLV4tikGg
	45+/jEPXFmgJzLkanoFUSgW98MS9qlQTookVdokqKLqQgn+x6w5fED8TcXlTgdTwnxB
	pcvtUQfmoqiFsmNsQkQYfgiZ5XjUg8SIbZmm3Bjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647491785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SPmB9uOmnMuUhWGpzq4bsLARI+9o0+gkyQgJx0m3rvc=;
	b=AmiWRAO9GXdfwC+7bZLQx1d7DnLfUufBY7XEL1TBu057rarpqONPARwISQ5etlAR
	RVLGszSbohkJRlMOzm9t5x2Hiu9X/hLhd7UkxNQQnhXTLt0Yd7RBCNW5iDPORVQr329
	IQfl2KUq6sIj8avbtAWOAFG0UCM3rjLQXumFP9sY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9629a066-73f13314-0fca-47b2-bd55-cd0c8cadd306-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5437eab4ce78d127bfbe2610a4743fb5557c5862dcc28fe13ac582e0c2c39695
Date: Thu, 17 Mar 2022 04:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647491784
