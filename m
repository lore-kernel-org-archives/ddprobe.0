Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56DC1B68
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647266784;
	h=To:Subject:From:Message-Id:Date;
	bh=1FdK7zCTzckdgIHx0iPIguWruhsFePqWsJhELl0v6Tg=;
	b=cWWvNDjTw8z4nE6mKpF7SylfH6Qpl6KT82btyiK2S2zCOklG4LIiX9ClKKf/+5TL
	8337NYojEWkRQcm4oNTNmPgFztiQghovscCiJCbBnIJVQ+z07YZP7RbsOwJi09fB/i1
	zV/yENm0FYIKlGqgN5f6yxV+IA7TCkxJapGaS5ww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647266784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1FdK7zCTzckdgIHx0iPIguWruhsFePqWsJhELl0v6Tg=;
	b=IHu8drDyCF9WNaymbIhiBb198GurJlhb/BVZf7IsjRRr/J3g97Pe1T4APt7yWSf1
	Qq8MzNu+4Olh8vGrczxYaX+KOVggiFlsmQPOLFOgI80SR/KmD/JFdMhetXrcKWnEjKh
	pZIqFznXBINflkwBlN3pZXsAC1eR8U0YJx2TSx7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88c065d3-bc085947-015c-46fb-becc-22d6ccb49e07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0dabe857c5429b3898782363f6943e3130e35e1968a721057a9919c4ba147f7
Date: Mon, 14 Mar 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647266784
