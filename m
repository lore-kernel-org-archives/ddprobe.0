Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604BC7A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647182184;
	h=To:Subject:From:Message-Id:Date;
	bh=lwsQUYNjJknhE5SIqa7Myd7gXFz40HxSeBHZ0HsfVsc=;
	b=LfwKO7a9L4yhBNJXvtxTzMnT90xQgyfay+A5/JFEozOGOF7Am8BTJ9P0/f73/K8b
	l4Q/D4yxxqzdtbD1ifMQJWjQfFC/KUmpcuu8aJd4vH6smU0Qwhr/8YCAd0DrjnP7atx
	ugPlrhhxpanlsMAevH7U0setLKaHAHsJOaZ238s4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647182184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lwsQUYNjJknhE5SIqa7Myd7gXFz40HxSeBHZ0HsfVsc=;
	b=Ow0vnRP+VCBuDnWmPA+NIQWT4FXcbY34wfJbyGy9BX9EgCWXssOzCqErMa1cQEC/
	rLQDIZ9okNzKKSCjdd5JwvsHbu5nN+WDeX1C2jG/03E3SmhigYTWojeEabvvMJV29RA
	TN/HdtYERpF5Cm4mb+1PDVKLpnUj6nv+AAFt3r34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f83b58137-07bf77b8-dd13-4106-972e-da50ce20e1b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2f5b4d036ea5516feccde1f4177c5b11fc0f003d2d43720cf26bfdfea0b1990
Date: Sun, 13 Mar 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647182184
