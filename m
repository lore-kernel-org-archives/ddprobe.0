Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BEB52116
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647779784;
	h=To:Subject:From:Message-Id:Date;
	bh=SHHYl4wUnXFPQcvaolkwR8TJ0q3ZsDEYgTwfGYurDlQ=;
	b=UXeY0cXDcFvoM0G6AijVykBM3fV84MkFWrVkmMhQUMnuqOT68we4sQ/QRuuqANJp
	HU4bs7lT3jRhBJuoWz81Ig02kYXJppxUubqLkaf50grHJlmYVns+lbKbLm66fXwhJ5G
	3LnIrkPFs5sEqS+KnB3OG+7hRWfLygIw66IJGh2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647779784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SHHYl4wUnXFPQcvaolkwR8TJ0q3ZsDEYgTwfGYurDlQ=;
	b=dtFLJ/hMGK8J+eGymSSMvILBwvM2omUJ6VHnHiJnbrf05fcWKQpWg2AhCTltIejb
	BOZp1kaWuWLb0nqIl4jXsbjEt+ru4jIxyIHwi38Q1xAncT2pw8OiBBs4QvixXfv8adW
	orjGPSkO29Zw9jpZMOkb4vRDBolg3OHgF8CsY8G8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa754281f-b2bf9097-2f05-41f7-b26a-e4161781fe42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1b6a455d09a06c5e31756288fa0cd8f3ab29bb6000ff0aff7daf0e2fcaf1519
Date: Sun, 20 Mar 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647779784
