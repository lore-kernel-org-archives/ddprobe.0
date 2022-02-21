Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75B220E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645405885;
	h=To:Subject:From:Message-Id:Date;
	bh=QKYyUXKZbj+Q+gmX0wzyBY3jB+MuqA9P4N3UAsPtVoQ=;
	b=FVPjELWgIa8K28rRuOx5l8VeaN0+4EyokJcEAnNLlDofjAoVO5Fo9OlxnFsE8dk1
	pTMvwKieQwR2z3QuKXkpx2tbsscfykdAhPU8cc5yV6v4XOnpEfbA1iTA4pVZDTPh+Rb
	ZjcOxUHr3eQLJAb77hYiNl0Jz0KlmpQiKUzpwxyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645405885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QKYyUXKZbj+Q+gmX0wzyBY3jB+MuqA9P4N3UAsPtVoQ=;
	b=JS1jj3Z8MpX/grO0UotW+jGa3DFKX20/SlgvcCPitKqx2G0bIqC4J8KTGHYf59ys
	AyUVCDlnqQw78Jfsvo77YI81v4zzu9S66uoeWDkjurHfj2qvjgW2DUuthVAxHp/AFHN
	RKLmU4JACMN+UZM2i2oN1YsdauwXljxn3Qi8PaLw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19d5515f-83987580-85e3-40ce-aa8e-2f88b318fc78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44b151d902b1a771a85c522e093f81bd245457ccc51ca2085525ccee8c94c797
Date: Mon, 21 Feb 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645405884
