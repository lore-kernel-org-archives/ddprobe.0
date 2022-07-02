Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAB71363
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 03:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656731212;
	h=To:Subject:From:Message-Id:Date;
	bh=Wyq8oO+PCa3yjkK7CuYCdy7Juxpo+sPx3Pd82I/DlWs=;
	b=h0pdyf6qupV6dPUwSDnNy2zKPDUnZXsX8l3YHqHca8ZbJGy89sp84Feq8eV6CQUu
	uC8HnYn/zEirlQ0QHMvz9s05ngWwV1W8LxdxmT8fLK0hKCv3skO3hvTQnqj/nKiAPFh
	/XiTH0Z7gE92Ga1rCnYsoynFuAJ+WvrFiR8cWTAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656731212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wyq8oO+PCa3yjkK7CuYCdy7Juxpo+sPx3Pd82I/DlWs=;
	b=XTLeuStlH/4AaOIqYX+ReNOXO09/D9iTz9cQBCp9WLkHP3dB/0scZARJTAIq+8HB
	OqrAL2gDxTYQW5CKvGYS5fZbGzQBwJbVcM99rCKPVys7HC2ZsDjEeyByv+lJWlzGlMg
	ksMF8pvozs+ViNCvBfpxxNjvixUS5Ur7IylKLVn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bce019e0-29e0655f-80ce-4c0a-ad11-627355080652-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53d3468329a35e1168f155366787306c36e30495bd002e7ceeda1c1f082d71fb
Date: Sat, 2 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656731212
