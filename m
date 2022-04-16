Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876977A
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 12:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650110758;
	h=To:Subject:From:Message-Id:Date;
	bh=1kHC7ld2Z9cuV6cWpgDBr9DszSfSoGwjMf+qL+h2jf4=;
	b=dg8YEXBBOvKQY6v7fPKRwVsDoGOQ1hStDAjvJdvpyQVz+Y8n6ZIhHNtsufvepyr3
	YoPxaS5sR052coe5TDHL3CJqqfALjHTtem821LHMXaA+vNt0TzkdYPlCXswkrRkoUKM
	BIhdKcWdAxjUD7tc8QiZu+3sS4OxqWlnyIERZU1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650110758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1kHC7ld2Z9cuV6cWpgDBr9DszSfSoGwjMf+qL+h2jf4=;
	b=eZYewvy474QBSZV5yd8eOJPk5swxzY85WBl3Hf6kKTW8IECcaxyw0P+Aqa2jGiU8
	Kn1v69SbnT7i0SKnYYKC0oqse06eApZoH/ibXVOjO0DgFKLboM07QRFDY6QbNyL/Ilc
	7Qi4ZMFX6wc8SDPD0HNKGnQtjM++zqU78C1DJIOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803243fd68-adf36940-2315-4006-a956-1b77e6707ae0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c46811aaa296b83c4f5ab07e1b491fac4423dde8fb56667954fb56417fa5745
Date: Sat, 16 Apr 2022 12:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650110757
