Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B907612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647888685;
	h=To:Subject:From:Message-Id:Date;
	bh=7Il56QhlJXtOV+7PTRfVyjlAGRqfedaSWO9qI/DIcOk=;
	b=iSPDNuZGVihIEYzRjgBGPD2lGIBrK9w2H6k/ks7h3MtQjd3Pe8YcDtEgKI2mdjX1
	t7t8oe52jsDHP5cWeQPyLZWHFttpTloZDX67uxYoxhS+LKgUSJX7z1I/TfUw/u/vil5
	g9KGLHGVTH3SaS3zQ0QO4PxbRzomFAGMOU3lfVoI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647888685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Il56QhlJXtOV+7PTRfVyjlAGRqfedaSWO9qI/DIcOk=;
	b=eVcUJCzHhutWSBtCLEiunCV0Mzuez1q0QEEbMqI984fcJW+RWdirhGYpCMVq2UFv
	WwK0I2VuF4vtDoig2Lk5Y1Vj20cP2FqjbjzZlx2sxzR1K7ZSYPslPssGt0G3XwKG6Ss
	btOcfS50ykkElaoQmXYoCFdT9VzDYT2oe3wyvQcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fadd1d6f3-b0987ca9-365b-42f7-b231-e6805a868658-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f614c6ac6c750531e2f0282e2f8a62594b72521b5ff07421642d981e232efa63
Date: Mon, 21 Mar 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647888684
