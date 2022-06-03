Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4315EEA1
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 08:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654243979;
	h=To:Subject:From:Message-Id:Date;
	bh=e9MeAotgQZ28fljCeewVHx9f41RKkdpLU+HkDzOlkNI=;
	b=Yw8/5BYjQOFKtNQZEbxJmX13DZGm17Kur1HgP5CDDyoQn6/JQHpx5lSikBgZGc+O
	Ou2cboJzKhDjuwu6wyIl0uakl/ahS24HTbwCHVeh7MQ1g9K8DmzX1BjyXoERRc1p47B
	94Th1wd1mCdQXEAU90lnLT80Tg3DNIyowN0Vr1Ss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654243979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e9MeAotgQZ28fljCeewVHx9f41RKkdpLU+HkDzOlkNI=;
	b=IaR7DjwZ3uA3H3pWw90AO2WjkaCVFsiOarbUSa62PI0WnmzNLEAy7rbgJVaiMiqh
	aAXS9h5MEeLzxxCkbEa2e2VB3vjQPph8NVt0pMj6gwtRcWkcX4l5Hz9H6hzEjqGlkDJ
	BdAJHOvxmWmuADdOwTInorCiScy048HPHUfDligc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181289ff018-aae74dcc-e628-4604-9a53-1aefdd611227-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73809abca6cde3e8ec5dd1ccd3a2483babaed118a8fffb743efd31ed60c3e0d9
Date: Fri, 3 Jun 2022 08:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654243979
