Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3F3160
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660114252;
	h=To:Subject:From:Message-Id:Date;
	bh=WdU0tuVv2ZJVj3Ukerff3FHl1noCqehqWOcEXphm5W0=;
	b=Z+VkUwGi8Jtk97MvGP+XCkCLXT8XbJX6ma2QK8aKAQCcWf70FgFYAxonXuEiFlVY
	ZXTjWCFmNHRVkW59KA+jkUY+igkdVm4d/aXEb1hhPxP4OLUHJaM5hxR8ZHYaZvUwg08
	AB4Gr9OrE0io0kuk74LmjdyMdemz3e8vdPWbO6NY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660114252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WdU0tuVv2ZJVj3Ukerff3FHl1noCqehqWOcEXphm5W0=;
	b=Y+Ad+XGegD98fhDhB/OXcxxo9qCdlE8jL7jJeuvRx9daE0NbUr0yIwuQC56fAlv/
	uBFHR8eyRf6plx2gH2ufihwVxU6f5bs5lZcAxY5R5Cxk/u1D4gVMYzD5MpdK82OAIkF
	E8NvgHN1bMFZ0tHnujv5cXQrof6GV5gWNb7L5Gjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828685332e-491fecef-2a92-4dd2-88da-cb94763775dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0cd5e77c9d8dc48ac9199787b8089ccdff714476c0b9a8244839a472faa8087
Date: Wed, 10 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660114252
