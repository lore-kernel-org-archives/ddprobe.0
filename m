Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C65E7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 12:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650111358;
	h=To:Subject:From:Message-Id:Date;
	bh=qnNcsmzixXed2ugvu23JnTZypfy9gxdWDKI1cQt8QSM=;
	b=IO1WCwEjo9sJFlGUQUZlL6s/N3dFkX3v03SeQ7Qs+ify9rO6ljKffAPfJxlNUIVF
	YxRVm8EA9ZKCJY2FzQw+wy96g4vQ3lQveS4A46wfX+Fsu64djGV+9iqc9M1/fNGfFJH
	BQ/wIw5wMLRKZe8I5odJhuUTap7iUeGwd8y4P9R4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650111358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qnNcsmzixXed2ugvu23JnTZypfy9gxdWDKI1cQt8QSM=;
	b=hYEpPbaQe43S7d5DEwfWOTkQfBTASKvRFS5vevdsrUofdls+fIl1y0kNQNwUI2Ys
	hbkUjip5yBT5uu03vliqF7a2ChwprlyP4RhXTBqt47/h7+iOwMuPFPdDMO6X45OYWBh
	4fmS4B9+xW0rtR9enyGU4bOcG3NuOwD5ZdY7N1Yg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180324d2542-084574a7-dc22-42c2-8bf5-a55b2e7a7e66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f0d19824316e3b9386d37504ee7e67c71055fc8c117073230cb80e333370078
Date: Sat, 16 Apr 2022 12:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650111358
