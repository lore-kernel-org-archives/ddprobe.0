Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AE215A5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 06:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649919238;
	h=To:Subject:From:Message-Id:Date;
	bh=Nyo3exFS/gjcOdF57VdwVspXB9KNMFrvUf7AbSdYrI4=;
	b=B/rsWPjo7/dtj+RKip9JiQ4wN4yhpa6EV10TZmCo3bDmvXmU0tnMpOXKFV/ji3id
	Kfxaka2zu+gn8fi9JnxzwHju0W3UQCyxCzHchBMOAkUUDOhClswETrKVP8UHrxOMhQw
	hO7bUHsqbD+dqCR8ktLpDahWhi8g6tW1K0RWTc70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649919238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nyo3exFS/gjcOdF57VdwVspXB9KNMFrvUf7AbSdYrI4=;
	b=C7PqEc4UAD6oMZiMqC18G16g+XAIP8CDDOAKs48hV0ZDQQnivrHHdNcjTaoRxNo7
	pQoJuKiAmHZMpOCyZe6TC/9QQJ1X6vz4di818WA3XsY8Om40D1IQ1i8aSBxI5ZJKQnn
	tr9NcviJT5A+yU5SmtDaUkUS5GLsy/Ide+qgeDIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018026d9a07a-4d6e763c-7a04-48f2-97cf-3b5c6e8d4af9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d466b0d67f0b8465e35f6c8e65ee417c159feb3c45953f529934c4d0c079569
Date: Thu, 14 Apr 2022 06:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649919238
