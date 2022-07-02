Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255461FBC
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656761212;
	h=To:Subject:From:Message-Id:Date;
	bh=xh9hkR6Vi7GwMZY9ujA+3W4w9A4Dfr5v15hia5IwweU=;
	b=jGqbSZR9Jr7LyEhg7/pPQw0j3Z6rUqw5sFVeSogZhpHMb/1bru9SN/rdxgWzgwhz
	sYARvHrLyEk/xoM6XanTaa8Dyhh0ZZZzr3C2LTDLPgUuIleT84yFQmfmWv3mJhXIjng
	E1guSR6wN3bR7T8vKkHl9IuqZkNPmXf5xZ4+s1Ug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656761212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xh9hkR6Vi7GwMZY9ujA+3W4w9A4Dfr5v15hia5IwweU=;
	b=LPhVajnYs9bNTGA44SuGGbqjdDhv4xvT5K2N9avRKI52Anq+mklDW+XqVMzy/18s
	Co5Y3flt8DJWBqJ356ypZCKtDVfNe0Z41LXMYCksCBA2g3A/8N5G4vsl9mTbhLmZg71
	jy8EkRWqlqi+rGWO1dAqKsI+A5YpJn4TQITSNFvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bea9ddd8-ee6ee8a3-d663-4476-b840-0bb939436669-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7303469b76364fec23c46658fde543541ce70c0c7018708485339fd90b0ed908
Date: Sat, 2 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656761212
