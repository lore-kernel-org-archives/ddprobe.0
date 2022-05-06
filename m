Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E4D623
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 05:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651813858;
	h=To:Subject:From:Message-Id:Date;
	bh=qkJEhY6QHxrWcDfARH5hJaKzQwSJo2M7/eXKJvjYrEw=;
	b=mizkK8t1R/xr5X3x1cLSSGTSnKToz70D3idoLWd1kO7pVl+NvKjMv9vihpIQfPPZ
	6dy1kHbc4I+2N8yqp2aVYcVHtUSVHipx+xQMNXadK6yQyoo2gtp74Ncf2qyeoqD9Xc0
	wJFSGpiTZRvisC7IEK7OT4vJV+hQEjkhu0fvi+Gs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651813858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qkJEhY6QHxrWcDfARH5hJaKzQwSJo2M7/eXKJvjYrEw=;
	b=IerWA51hBzTfEhu8B3s/U6KqHhR+E5m3S788Q7VZbROkPwSBQNhiil+6BJLWa65c
	5R8mfBpCAql2zEoD5vUPgTVZi2B8GWooIjWZk7rhPCQPF0SXxU/WQVDfzFYhmssU+Zw
	Yfu6EJiysnQoxEIi1R6QiV/f/f/4LwkcItiryLpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097c73bd8-e66e2094-5acd-42aa-9c6a-4ee9dfeab2e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0de47243e28325b1da02d651bfce16cba8cc48c4f34560469292ea36a6b26027
Date: Fri, 6 May 2022 05:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651813858
