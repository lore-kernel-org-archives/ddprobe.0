Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAFB7F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 09:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652864880;
	h=To:Subject:From:Message-Id:Date;
	bh=vKg/gehn3V5dHpJnlZbOdS7rSVulCZRDP3A7MprknHw=;
	b=avwRsPCfENHzRjKHgfVQAfWO3YiuhtV8sCZ9e0VIwkNDrLWXmiTArupyw2E10reb
	uoUKAGLrp+oW/oRYZ2j/werlhMIVXtwHJ0jQys9dNKFp1kygbHkT4qG2qaIrfE3O+cp
	tJFBOmGYiJgaKqriBXEhL058kloJVfdWJOZhF5b0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652864880;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vKg/gehn3V5dHpJnlZbOdS7rSVulCZRDP3A7MprknHw=;
	b=EZcbINLpWZ/53xPKPUTRCip9511prY5P3Tyu7NWeTLb6x5GBopGtIwNdpE3visG8
	Hb0oPJ4LJtQHsWWfIC7125Txzk0Oyuswugi4sA9/9/4kdoLzyW0ao92aCtuu+bEHC0g
	MPY6MoyyXHBP+ykt737JMFKJx9QHS1pzaBmXhp5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d66c8abf-fd10fcdb-dd69-4d6e-91ba-ab77c2293ee0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6845054f23c7a372d29aaea7bf5d7bcb7e42e46a096f5b1db66727e1f7975a9c
Date: Wed, 18 May 2022 09:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652864879
