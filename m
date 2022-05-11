Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC1E28F2
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 18:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652294339;
	h=To:Subject:From:Message-Id:Date;
	bh=+SIpYI2qHk2mTopLJVHZrJA4vIANcWMZcFdvpdKc8wI=;
	b=Ob1zzdT1Gp1wZnADZ0u6ExIj/HniStJoqvEyUO21QQ9NDxYpoUFv4RB0TlRGT3tR
	iE4A6xU8Toj/6aOB9nY+uCQZ9cZOkusA9AZZZv1FS+9jiNiw8t2dJnrD8B1QSg3WlYk
	eUU8VCFGf6wMEnGgqA83lAD0YQnUrEJYyRFxrss8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652294339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+SIpYI2qHk2mTopLJVHZrJA4vIANcWMZcFdvpdKc8wI=;
	b=HsUrc8C8P/DHgMlAwMmsQ5NpdKXTCTCER5Ev8atE7R0lzY0c9Gz6zCNNF/EX0E86
	juy7/CgXa2VuZmFBJexnekZKezulAy8DlTZoDen85u1Oux6zPwrg0IsO8q0I6S4YE2H
	qm7AwFI8Qm8USWLu5fqFA4Qen0/AK85GwySD72T8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b46acb32-6e0c6ab0-89f4-4ada-8879-d37af3d247aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11f30312d470a1d27e171859db94d1124380c78b4135542433b197b0f52b2d1a
Date: Wed, 11 May 2022 18:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652294339
