Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DCD7C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 09:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649062978;
	h=To:Subject:From:Message-Id:Date;
	bh=NPH3OdDb1Y1cs2RrNBpIFJ6frmaoPXzkh/RqzKbpS0s=;
	b=R2j2oc+UduCxQP2dzMihfl0TslqS7IixlVh5C8lgJlDsA/6Lco9mGY0CWP0jjnlu
	i++aaICcQCa2TySXqG98frf8bGjfLDVpJoHFjt3kEwimGWErIAev8CqJy3lBs4S1HBp
	X82rjCP20VSIJzM+Ao67W39b7B2AQViwVSttNTp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649062978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NPH3OdDb1Y1cs2RrNBpIFJ6frmaoPXzkh/RqzKbpS0s=;
	b=JEFYL8XvVqg0+Jo7K3Bbn9JlpRLdXE7qgszoj6sQB1bQaMFze55PrbhYsv8o1Cgh
	eZbU2uBW3EJLObfuUxMNMTtU60Xn1pfYtOEYykBVC2s4lrjhfvlsmP3RCCk9dmZXtja
	W7VV7ZTFCxIbJWKq2F4D9ayuujkbhNTYmnjSrhNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff3d022e4-b25260d9-8616-41bf-8fd9-e89335df63dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d656986ca3603f1bf973e1019a0894d8d2aa9e553f05d130db791ac54814919b
Date: Mon, 4 Apr 2022 09:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649062978
