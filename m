Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7D13210
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 19:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653159599;
	h=To:Subject:From:Message-Id:Date;
	bh=NVB+8/gcXBqN8zaECHgRRlLhbaarGF9KkIfOK1Wr8wg=;
	b=SUtss5fxLjQbQzO2GOxTsAvS+Sa4HRtScL0qE4yMTu0dXUSFN46Bn+k3PPK2b1d8
	gfexLoFkQcKYXa8gQW6myuhwEyRv0ZqJBFWmlsrNuawB6lUNmX4KHSffOAek4NTUy4T
	5XkSCqUFZ0ApXFslMy3KXKsPuiBqI6s+H7k5BkCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653159599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NVB+8/gcXBqN8zaECHgRRlLhbaarGF9KkIfOK1Wr8wg=;
	b=GwdLjJ8HzMmgX+buiu3sGpYQyWETnrnW6h+yz0CzbgKyilcZxsrV6OOpgxSmS2NY
	/6UwBKezUGx5YaUiUmId3I/FM2FtkFJSuu2JwvXJnH8GJZSY0F7vmIhWsAxD0tf74im
	HmJ+LDTxNqM5CzrDNmON4USuh2lHO1KAON6s/O4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7fd9cb4-718bf10b-c1c2-4188-9431-ce44d54b9a2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02c5772f47c1516e232401113179ca42e4e2b9117e1202a945b428c1eb8ef804
Date: Sat, 21 May 2022 18:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653159599
