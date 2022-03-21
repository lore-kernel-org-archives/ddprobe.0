Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9270C36F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647834685;
	h=To:Subject:From:Message-Id:Date;
	bh=FV4IXwA5lkOs+yWjrOuRMDDwuhNFoo1BQ7rX2RBvVnI=;
	b=GiHfoyI1PZKQzqy2FO3hCcWrOcyITcmHYtrVxHG/54udnvKq1sA0MyEnmAbo9rHz
	ypPg0k0YVGxjfhJpfL6hB6EbwOP99eFVkmemMtDj1ifusvEj7P8CLMffW54ShSHw+Mq
	J4I+Xme1RGGU0X8gQlJXGHZ3LHsPNP1VXuDeAUAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647834685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FV4IXwA5lkOs+yWjrOuRMDDwuhNFoo1BQ7rX2RBvVnI=;
	b=LveMbJj6cmH6k32bVfZvjg2Yp8A2kBlNhhTpcrm6v/Rzvn9boPo7AQh/tJSZAxQ5
	cOF+gfi2p/cZENfGXFG2LIfHrb/l8wtmbZ4ogOef9sU0Uq+YuzHZw3OiWaxB5QdrKRs
	eBJvy4jg65qCCDXG3YoXaJTtWJhVG/FFu0tZg67c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa99dd7a-afa7cde2-513d-4ad4-9348-73fe329a204e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2288e8ff5dbada5607973ed2b34c1021f58d2abded74aab7c0e465691652e6e3
Date: Mon, 21 Mar 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647834684
