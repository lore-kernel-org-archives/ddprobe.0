Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5654B7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 05:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648101538;
	h=To:Subject:From:Message-Id:Date;
	bh=2JxnnzumErPG9B0LT5HksgxbVSgdTGjX4Zku9uHO6Xg=;
	b=Xfq8dERbGxhwoFD2saGaVIutMQzgH8cJAgISNgqUpSexHaABIw56qrIgWev/IXka
	TBpumReuyAp5lC0LqRf8WPcHaeTMJ/mMYNBzUotgIEKQYvC8QNWaVU49y81vDBXgzV7
	3L4mZPre8xBHie6nhtFmjm4W/OLi3Mq78caqdsCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648101538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2JxnnzumErPG9B0LT5HksgxbVSgdTGjX4Zku9uHO6Xg=;
	b=H365TsKrP4Vrfr5B0jez2UWrRSgR48dz0cL+a57CzG+qsJJKI7pDKVvTeF0elu8e
	W7RSwZNQznjjTwe7N2oBuOaz2Gs9AYRn8VcrWBGy4uBii+XwMvMJosXJULpHljNGsc6
	I5SzGlbEkNz5dNnT4SD470Y5IuZD6qTt8T22yQA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba81b9cb-f32eda2b-9e05-47c0-a727-253ab5944eb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 552fcb823ceb8d60f2fa3e1399436cb3570a2d78f72658d01affcaa14efcf10b
Date: Thu, 24 Mar 2022 05:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648101538
