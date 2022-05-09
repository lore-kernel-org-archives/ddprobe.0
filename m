Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7805F7B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 09:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652090398;
	h=To:Subject:From:Message-Id:Date;
	bh=alWA2VLDmmyDjnD80MJ4tX2hRfAm7rEY5fdK58hPTOs=;
	b=X8GXNfNfUO0II1Th2+L/wjOBrjkxjkXif0pVZhyCw3NPI35389KV96paBtjC1onj
	tDpSfPtN7B47nph2bcA7REMG3k+zYhG5t5JnBeU2NnsBRtX8WZ21yavSrJktgIWOwGF
	SWCBlMK3cmtuAxJZpZJ5RwFhDe0fqnIlXpoHi+o0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652090398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=alWA2VLDmmyDjnD80MJ4tX2hRfAm7rEY5fdK58hPTOs=;
	b=S3RFShhTcGbvz1O1p5WFkwfhI5eWTFrznJ1lXfTtYmT0dKqfSW61zdftvL2iDNoj
	fmepphkfg7+YGpor/LXY+QN8gjxn2xeqUJ22N4FN8BL3sTt6WwfGE6inH78LL0S+acz
	cOuFltdNY6Yh7PYFguq/JVSHTeyVZPmiZF0hGejI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a842e65d-bb2c630c-b59b-4793-968d-74261899237d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bb6b9bd882d615edb2eb29c31e60df71222feca756b5b4684e828b839c1c07e
Date: Mon, 9 May 2022 09:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652090398
