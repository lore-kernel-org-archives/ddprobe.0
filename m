Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82E333CA
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 19:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651604458;
	h=To:Subject:From:Message-Id:Date;
	bh=CY9i7m9N/cp8NKt6wT0qbo2iQT19x1VO9J35RMH7cUQ=;
	b=bruQRi90+sIpFmTt2vsV0WV8kaNGAsiqWhgzUsRLOm7SXRB5bjrTFJbfxh9Zdmtt
	IX5A27HdjRphEzJZaoYeaWJyfI0TW8JiZMIwnI5Xtv1YrYQRLubgHCIpjSX+qxInvP5
	UpyN0cBPWOXPJkgpQrG/swWSMLrq55PQ1LzVWrdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651604458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CY9i7m9N/cp8NKt6wT0qbo2iQT19x1VO9J35RMH7cUQ=;
	b=VAAKByNxY/BYCp83WNMbA5Q0tV/t4EQyOoAeo+IKvi5XahJccjqgMn1WwavYCBcD
	DPuwJUdfvAYNqQ1nxj0ZLM34yQ4N2l/fA3qrPfos0IBMTptTs75sW11qWR4FUdGyGCd
	WJgdxFucv3KgE2aW2pRceXpxCCE7YWBdtKuzFGhk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808b4c0b55-2a32ec39-9343-4bcb-a95b-6d496ebb2353-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df186e7d5c3e80ee6b0a0bd57a65192357955d1ebf95a179e4b415753de677f9
Date: Tue, 3 May 2022 19:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651604458
