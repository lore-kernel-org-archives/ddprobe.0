Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF272F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 05:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647495984;
	h=To:Subject:From:Message-Id:Date;
	bh=vvTQenlzvspxqUhNNmOt8Tm66giWbD889T9PK57GO/o=;
	b=FQRUbLFNeWTRbr2kowlndAC4uDEju/oyC5Oq0UwHkNsvCVhMREr3uNGTJTcFla/p
	cr2Q5HZAOmQr2jzyHCkvZFEkgTBf0TN28jHXIVOUvM/e0sHABfd+3q4pgfh05uuH5WZ
	kifF1wGTo5kxydJkwus/DsWJTYmQibeXT8d0THIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647495984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vvTQenlzvspxqUhNNmOt8Tm66giWbD889T9PK57GO/o=;
	b=aOZqf3Le+0VGfh1o4pcZhC27xwVf85k8U5v3ITD1CNDogWpRtqpNWYSN08LNBQtR
	fcPs9GJ24tIqIZ8ys7PdkYG9t6x7LAedTC7VuJoKn3Su9Bi9h0uIPoCefMXl4j0srQx
	6l+VZ7BMwVnXjhCb2H2SQBZ8+DUqBjIhmL5M2gng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9669b661-e6e56fb6-bcff-4e74-aef5-70591ae937d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cc83b542259baf8c5c62815b425dc3b44ccbc0de9fe990e2bf8c2c375dc9b67
Date: Thu, 17 Mar 2022 05:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647495984
