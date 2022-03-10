Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A477A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646885484;
	h=To:Subject:From:Message-Id:Date;
	bh=zgwjInq+oGobs60qVb0ByR4SZkk5W1KC65J09icWDAc=;
	b=WlSFBGQOtIJU4wym4UCnhfkGDgMwCI00ICG/1eRHx6eopn0o+6TGSqV/vTQTE6vi
	4UD2xLhEiDqMlCARzz06O+cEJ86UFAk3Ci+z0lPuuNBqoE6oVCten7m7DvWEvY0ayok
	HZrKY/5g5GD4A/5Qf6Ip10nZcwm4bbQ00rn3zPIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646885484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zgwjInq+oGobs60qVb0ByR4SZkk5W1KC65J09icWDAc=;
	b=YQBL2vNg5WxK/rJlkqFRUUzoAo1Icq1AW16eUCjP04aFQd2y80JD7FPXbh6Y6F79
	Qzp+u7gmK+a+4Iw2ljoPfvmWvIP8aXN9yrSzFCxol4Hu1WG2QCz1bBC/JwghtcGSmbs
	5qNcKoRTQQhxnxjUITTxrPIHzZr6A/XCqRzt7vd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f720638ec-13346e88-2d8f-4b6a-87aa-7622f8ff34d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36fafa73b70fc9cc1547fa2957bf06278b641aa337515ebe64c1f2d3dd488fd5
Date: Thu, 10 Mar 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646885484
