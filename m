Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29EA1367
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 14:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649599858;
	h=To:Subject:From:Message-Id:Date;
	bh=uRzfZg8IOIDUJnEM1xqkhrUiIRWsgFxS5nckZSdGD54=;
	b=BF8fuwPu5qc4rvIHs9pUDhAtcqnyLZqWG9b+aWZXTqrGs0ENgTAa7aI0/FQAOUIt
	JgnjbwmMIE2UjLjP3LfOpCxJ3Gchqi7TH+yhIH1csT/q5q0Ajkp5TEfyEjguvo9w0y4
	ZsLiTK4fM7oYf5Kqcn6ibGHVlT5lwkIONep3pazY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649599858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uRzfZg8IOIDUJnEM1xqkhrUiIRWsgFxS5nckZSdGD54=;
	b=iWDBqaJaPYYfCj8Vb1sPZB0YHUjdceonwBHCjOduiPAX9yNGaDMhIOAfcYbCEuek
	MyyQk0ywrqAtln5kau4Bf/0IwK4ne3gkpspz3wJ/2Nlm1byWduUBI/jlZCpFl/81/0C
	kLl0fP9a8BcX6U9ZndOGZI3jG6CGKTAcCwTckEV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018013d0463f-e87e96f0-ad06-4a33-8970-e5cbd8a8499c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75c57c0853ae4a1c5fe6b94cd20bdadd4d3b8e6981ea670aa70c44c02f091097
Date: Sun, 10 Apr 2022 14:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649599858
