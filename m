Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082CCEA8
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 16:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651941418;
	h=To:Subject:From:Message-Id:Date;
	bh=GnBfHEO3J2cOaXf5Ab0OUy6XOFoNw7cr3Je5WFTVXys=;
	b=V8DkxDHGHmfmLxwW9V29ayXEpmABGM84moep5jjiCbWa3AjA9iU2APMUzKiq5JWC
	E/txbL8cPINSsALUkvxUNLM5CqAMyyqomsM8S+UjLly0Xauz8SabsvF4htEofqlN4q3
	f4mzuDmK9s6SZGyPaZj95zHZvc1ZpWqvM5i6g6XI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651941418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GnBfHEO3J2cOaXf5Ab0OUy6XOFoNw7cr3Je5WFTVXys=;
	b=VMrQ1wX8b2DYQJqWH0H2K6YqbdZ92ZtAOGpcU1FIt/yQuzzpIO4wQTO2c1UGGSAu
	RynJSnWI8gPe74sm3qbqTN8mdBARbLb5u2UBcF7kZLW/xHJf8vCyUqv82wq/8fQVh9N
	e1ADJNPlcUY5sDoSpmHlNxzPKwlFCdRsg7sgvtZw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809f61a523-e4c1fd9e-bfb1-40b4-8b0c-35e9f03f3532-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c05abe0267828bc274a781f7516542cde8962aad5c89246a791ea364eec8300
Date: Sat, 7 May 2022 16:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651941418
