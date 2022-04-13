Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA0A2F32
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 20:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649881558;
	h=To:Subject:From:Message-Id:Date;
	bh=YuFGMo6uu5dV8XOwuUsLUk4XCpBjWYkOKcWwW75BA0o=;
	b=IRdzaYhRAMciMY71qEOh7+dftJazT64NFWUuNi8U9/NzXSb+7h92UsQQX6b2dHPn
	/Z9p5NBSAvQfNcK3MZT9ddYqSLWfvUR4S279LPA2xsnthpEeC378iXHe3BGMyJruYwX
	19ZgGOO2KlIZl2cgJfmYku1fol1/zETEC9o8PqnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649881558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YuFGMo6uu5dV8XOwuUsLUk4XCpBjWYkOKcWwW75BA0o=;
	b=KsYR+PGWGyiMlxZpXWMwa2kK7/3spDtKo1jJdnvHb/CN7AQIunQ0UqcONcQTWlNF
	3Q/RMLsMqOkjIYX3j+s9nM4yBGnY1B+BEyoZHSukGN+Ua70RuxeiZj9t176eRQe23z+
	oO2xBDk37bzhGUkFzFp0Fy6LEMl2r2Wv785AQhmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180249aad7e-3fbe2f3f-b149-4f0e-96c0-64050b4ac75a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6b4696893df892006d818ef21fc16c49f922f7d71110b5b7c6659d30df59685
Date: Wed, 13 Apr 2022 20:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649881558
