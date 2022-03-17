Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24AA3D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647508284;
	h=To:Subject:From:Message-Id:Date;
	bh=UmX6TT+xkCiZblWPvgpkYoiMXT4ajTv7gPwVAeu4t2s=;
	b=cGwno4Q8vCsKmcixu/gdAcUt35Z0JaTKrfEO9XSJb+tKs/oCspjGQ8O56vQEIHkL
	nBUSd02cXq3ITt+9SyeaC4UG5JMEPhIWKoQ9cy4djwtz7Yna37O6Bk058BwiiTLIqJq
	AKivv8okPtqnW7l1baeVTI4dZfnyYK1DuO2/O17k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647508284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UmX6TT+xkCiZblWPvgpkYoiMXT4ajTv7gPwVAeu4t2s=;
	b=jgRRRwUbE/1snOXIQDorAyFt6duYrxt+p43gXVd6psrUQQSX1iCAM26qLdKLlEdb
	U+YBitwrpbvhq6bpacZQhvPxWZRQdIJiEBF0KWKowe6xQ/a84OBAmsvfLLTnLfyARJT
	mo/nzJkFY1czfkHjvIPej0elB3tkTf1aQiZtCriY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9725657f-b2f135be-b667-444e-8c36-a4702e88f7d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f30e032386e8b648e24de90c9c910cd5f375d660ca1e72c5adc4ef3b2aa51dc4
Date: Thu, 17 Mar 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647508284
