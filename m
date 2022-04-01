Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B727B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 14:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648824358;
	h=To:Subject:From:Message-Id:Date;
	bh=Vld62V8BujWXkioK4NPHBYpg2nBn/ABQBWstvg2P27w=;
	b=SDQtlbAgf0X9/SKpWV7UR/rJ+E7LZ4y43/DyzaZ+zPeOklI1UJ1vLvIEuB3Fw4Wz
	NNW2yVKOBR8wif9ZdXwyfHhL+Eb5YveKMpQ3r6CXBqXydUkpdiQMFX8rhQBhgtRcJO+
	5MLaPZcBqdrhGNDWtGLfN9pHawrrafQ0RHFcrVqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648824358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vld62V8BujWXkioK4NPHBYpg2nBn/ABQBWstvg2P27w=;
	b=Chrd+QxLjzYTDcO8vhGNKE4RSueFt19gH8TrdWBscxwXaPrD48LHpI/v3RD4RV9l
	J4Z5LPgEYlXpKLtZaM+/Uwic05JUkdPceYohWNy6Dmf95LsjOh3RsMfMwdH3vISu29A
	Ou4Yc10UbR7VVpqpjRjUZPC/0Jc7yzJMGXx6GsOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe597156e-30e4dbe9-7d77-486b-9f3f-93c227558f31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93735a778c4a8d3bb60320f078f0835484381b53c9a1d141e8d09e878fd076df
Date: Fri, 1 Apr 2022 14:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648824358
