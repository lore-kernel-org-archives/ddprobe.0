Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F255DA31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647943585;
	h=To:Subject:From:Message-Id:Date;
	bh=dp5wLGZvca2LwmpcAQ+ASLbTQldigFFUz/3dTGcQiW4=;
	b=R5l51VtQQVEchk2UirpMN7LAQiRBTkyCEPrhRBP0EFlV6qqBD/zdnEB/jaz1mZ8A
	COlQY6G6d/om3SzVoIrScQ3KPfP0zT8URaHpVTdJMdTwV9rCA0/Bdo9K+ox6R3QREyY
	X2HyENxJc6qfa2Gb52mpr9Ppdo4uQJTQolIxMiz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647943585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dp5wLGZvca2LwmpcAQ+ASLbTQldigFFUz/3dTGcQiW4=;
	b=Ua1aBKdK1qVXtflB/V5F9yVhSJeItU5Ern4FhX42JJBloOeKvpFtlRLH8mdEzNMa
	VXpfpiwGBEd2+bGhFBOL+oDy5ad8c+C7cJH3HOs7PtZ1wcSzmOZKGVwbYNeiaxxC/lo
	cUNy4uOkvfVn+hbvBjN+MVNdu6htOyCsIjVwYGyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1178bc6-6de9ca9f-956e-45d8-9e05-9df76011771b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a182de9490d17f9b0d1694e59aa6f1cf0df7c724bd4ca51879c435fb52e4760
Date: Tue, 22 Mar 2022 10:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647943584
