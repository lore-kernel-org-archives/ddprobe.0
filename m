Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590DF2104
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646189784;
	h=To:Subject:From:Message-Id:Date;
	bh=3AFka+tjgEsehbAiWu0JVy3ESBYyRlsxvG62y4Mp5pg=;
	b=ec6IYci+lKooQg2cyP3gmavPIIrf5XNrZiDPKb7sZAXS8kwPALaHVwk6s8JS35ly
	/qTUup6sMEIg5t38wQ193+b3UoT5jyBd74p9HBK1HFXOsm7iv1CwCZBx7pQ/b2NkDf7
	SwOK8/MT9Zz3cA/J7uXHsgwTmgFOtnzU6Oq4Rs6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646189784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3AFka+tjgEsehbAiWu0JVy3ESBYyRlsxvG62y4Mp5pg=;
	b=eBM/0PBwNHNGVQVj0uyCjXiXD+ca+986QnwtvCzwMLehzkKAxVroQfdNSqnbYjMQ
	i4pZkGEKnzRS0RjNWar1IvE3ohHV/uPDGyOWhJMQMrSmAtlNeA3iesOVzqbHF+KB7+T
	o/QJxKNn5mb8QOs2bgY9IAHq4RLeRB90uh0v4XbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f488eaeac-2db375a8-c8ce-4eb9-85f4-7a2c9e97756c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7efd2d0a83cef4e853f97174e37aaa1bb62f61bed597f0fb562bc8cf7bd526f1
Date: Wed, 2 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646189784
