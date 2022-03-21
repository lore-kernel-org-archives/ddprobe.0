Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D78643
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647847284;
	h=To:Subject:From:Message-Id:Date;
	bh=vhWDoTDc1YG5Xj5mJmR1Ss00yWiOcZqRqOZtpD6ZJRg=;
	b=ZGfDtBkDPd1lFwarzyTrT8dUwBPWH5tzNOHUuYyVb4dK29cfzt3kpq+580ZguC8S
	jVD8/7zX0UHuo1RUgkDsO0/uFj/GRIhHoYzZu2mUstWLw4//B+N25+nL7P9fbr1P+Ff
	P7TFRwmYPEgwd/bGxx0lh3koCn9Ty4mUZ/aJtCrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647847284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vhWDoTDc1YG5Xj5mJmR1Ss00yWiOcZqRqOZtpD6ZJRg=;
	b=Zi0mYwiixA+iuvAZqgGh1xzpAfNGR+mH3x315t6IdWtaOytIK5PTYbi3/filjEVF
	oeduK1xfOdwinYGsjebqiyem8dL5QS5OkjXhbsx1csHNHX2BousHWCXkTUgNORo9Gk0
	VDEfViOdA8s9xgk19Sb+sj/XKTwteY7QJbs2lmRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab5a1ffc-7258dfc5-744a-481c-838d-f1b8b8d41b1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23f9f489d07acdb2aa6632764cfff9982b30d5c1093298ddc655c6528fe7c2c1
Date: Mon, 21 Mar 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647847284
