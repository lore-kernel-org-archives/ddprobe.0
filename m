Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7313695D
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645640784;
	h=To:Subject:From:Message-Id:Date;
	bh=NzTVmRgTD9zCsBjeoAs6M9bVAx8EmwTelDkoME7TBKE=;
	b=hC7+GEGOKEIL7eLh4QHoGEkXy6IxqKhnk3NLtp7kmvIpQ1ScRR0tclB+M2E7/22N
	3vuPyybyMgIK/p7G5n1BXj8BdkszRI5sUvEbOpuyKx/XgUJYOy8QH5m36uXJRUbmQ5W
	mQuV7yo52uuOfKwOvEl227zgrTE/p+Ge+Ny8EEhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645640784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NzTVmRgTD9zCsBjeoAs6M9bVAx8EmwTelDkoME7TBKE=;
	b=ZdzVoerO+GU9ARQR6qeTOURipqJY2CToszL0cIv/SnIXCga7iVxHwsi6ND9Decgd
	xHWQbpgvNFlGgLObDWGXIRqbtFgnnEvh6dD/ocPq0cHQ56/6WqPMCTtumeYMosIWE5D
	I4GKpCNWdyrGuCH8YFhw8yPzquTDqu6nVES+1LeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27d59be3-7b07de2e-d7e6-4a55-809b-5c385bcd1796-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c783566409c6e7077bd0d7fc27d0b6dd7b9f7f33b132df7d80bcecdbf9038c36
Date: Wed, 23 Feb 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645640784
