Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E0838F8
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647449484;
	h=To:Subject:From:Message-Id:Date;
	bh=0MLFT8+8ajw2Pq+7ALG1ENDfzB3nMVAOfPoJiqP83Ac=;
	b=DswvS0DQU+DHJp7zPxjX1hLzdotXMwXYn9LO23srK/Ohpw8RlBbZ1MjCpC/V+xsl
	oF4VthCA7jPP1YQXPXsu95t/Xx+Gf1OrNXGBs0TJUdXsELX9snQKQg3PsTsJB3INWnw
	PwBUG0DUNQfPt1w8/xkvdhhWJO1W74uHMoeuKxQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647449484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0MLFT8+8ajw2Pq+7ALG1ENDfzB3nMVAOfPoJiqP83Ac=;
	b=DQ1idcocCj/WJuQXYSJXw/l40mNkgJNAaTlUT6VGpREAnHcJdlA+VpjmMIBaGWB7
	WhwiiDOw7ssfW0d5cONHKL5t7u3rUnTqLeq3ERP9CplHdSyxU61j9WW5QAmfYMN5cpV
	CewE5o6VX2lFEPkP2alJXSp/eXbHiLCdVNEmSj70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f93a42df6-b793901f-b4c5-49f0-942b-5b76679a5eb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04dad4cbad18b8c506a41fa3cb5183df0cb030d15f67c4bd166c19f5b7e91faf
Date: Wed, 16 Mar 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647449484
