Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15151855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647255085;
	h=To:Subject:From:Message-Id:Date;
	bh=K1yz59ACynU1AOb0CCcIa14ZO8uhT4yCUR/Fv6jhNcw=;
	b=AuBdHRQ/fuJ5cUy3LBwd/KSWadezri2+0Ri7wp1ShNwiuIf0s1uN7hLbhGjbrAGD
	HPWJpPvjMgWjWY4fxTA3OJcms+JsRtXBpOcc536J2P0Z8jeciPVU7OWzhEGrvwg2Pvx
	KoHWJoP3ptWAo0YPLxU1dJILJ3brYYkoq+hQXb5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647255085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K1yz59ACynU1AOb0CCcIa14ZO8uhT4yCUR/Fv6jhNcw=;
	b=GdiZ2pPHtooccxIAfYOD+6LzPim17T6SpaAA/3h2tZy8++XhEVZbr+1F1xhUJ/W+
	JeTJVRttP8Arq0LPi/BX/IOoeNI+i2UN8ODYVLLH1MgEyyD7kOBco8nb3VEoAlS3UEE
	V8a/b+Y8G26muAf49UwFW3/Ki2n5wM9zgHBCZOd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f880ddea4-f3eccf73-5a0c-41c3-afd8-bf768214f7e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 798453dc70433b70cd827af96ed0a4c88922c9e3f7b36cac8779de31cb9a23f6
Date: Mon, 14 Mar 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647255084
