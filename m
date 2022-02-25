Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C627A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645784184;
	h=To:Subject:From:Message-Id:Date;
	bh=q3KNiX/RTneoJJQVYQQg+LNAwTBB3bBoqJydJp20gtw=;
	b=cY1YByULXlKHPmUqsOH6O1mP39dsvWbHJeu+oSFCJyG/B5YiGRH8AxAk0JzvVbk8
	BmAuhAejTHDag6aV/xzTlWm4v46ljt8pfe14lEzQF7Ibmh4XoMUF5bX6Jd1oGtGjlwt
	NHg4LpHiNZAoKA/+xnmHYw2diO9uNa+l1wiz7e2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645784184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q3KNiX/RTneoJJQVYQQg+LNAwTBB3bBoqJydJp20gtw=;
	b=ctfBFnVJ3wKw6sSaes5AVngdxePurKuvoNP0Ob6B40EsOr+7FIS2j2hQayAoTTQl
	FgsxNJHMvLCkPkh6gEHHO3831v58Y/bLotkaURuDog4pk0SiS3P5I0wpBOtEf4VSV1T
	ToCqrDkWEHPXDEz0LKBbhlhfNy2RzFSxs46HF9d4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3061b7a2-b6d16e5f-1dba-4a4a-a51b-5acc0d236113-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cd6b67f7557a41d40ef7cd84b994804d53adf1ea6b1988b0c2f8a5063de66bb
Date: Fri, 25 Feb 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645784184
