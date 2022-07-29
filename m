Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EED84C67
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659111652;
	h=To:Subject:From:Message-Id:Date;
	bh=cpchmI3wsjqCdPQ96JrJ4IWd+qVNq00vkECx/1KzdS0=;
	b=fhG2IuCwxEGwb0Mhc1tvgFUWG+U75yaP+HUyJFiWMpSQnnggZ49Zz/HnAMWUwJBu
	N72QCWjYkRM66ukQD3i8cMzfyGnq09e650tU568uTBsqmtaYy80aDgyrpkkNVcG4reD
	De5qvGNCFzn7LHwAdFubSAm0AGrM4KvUfdu6tpac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659111652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cpchmI3wsjqCdPQ96JrJ4IWd+qVNq00vkECx/1KzdS0=;
	b=X9E/XNbtLtren0cTQRwY4G446gMXfUaCWk8AYntjimxwWlhnCMRJqnZaNAtxSYK4
	7JItzJltS1vqmotHlxPI8iW4T/TuLifu3wdmtj0RHDQFTMTiGklCAAXo+Z0hog3i8mQ
	TI4OLam/TqGgmvRGoGYcifxX4fEN5B+llleutEjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ac2bcbb-f872275f-c708-4689-837f-04168eca4b35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d3f49afd0a9023d05c90c7abda6ceb508033ea8fb5cfd05a88369b53b669727
Date: Fri, 29 Jul 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659111652
