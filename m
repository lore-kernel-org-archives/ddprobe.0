Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4E27A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647054985;
	h=To:Subject:From:Message-Id:Date;
	bh=LSSt1KiVgKz0d45EYbUMm/vypsjjh/9VOaTZPJ1ZDCA=;
	b=AvRvlpZzmACldhgTW7FuaiOEmAuYo4gqNcvGHBZJjgIWp+YcqLgF/Zr0c1P7wyVo
	RzkeT6BquI8pQjG0Hq+au3yczFsLdNmi2njHo81UsTU6PjUN9VQj3D6fKDwJzRhgtAW
	a1P9ha1Dv1uSiFWffMBNahwfguFjuKKveXvOUmbY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647054985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LSSt1KiVgKz0d45EYbUMm/vypsjjh/9VOaTZPJ1ZDCA=;
	b=R0m/FO0dsIM+6icBRosFFw4i7v8ZcduaCpGNXmwJNMjWnUxeVFfOeEf5mc1ZID7L
	96vyF5L/Ozht9qk7rUmM7Ljl0ClDQ+Rsdw3AV36GghL9yEjynbF4EcwnKMITcKw9/f2
	QxRdJNakLAdmZ+tOSTpEDSY9u/gOK8BkqiGaWnA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c20964a-b691daf8-1c9c-47c1-8385-21ed094db75c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3af8f284413c4ec91f4dfbb370f8789239d680dcff7c703a70332a46d2eae9f
Date: Sat, 12 Mar 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647054984
