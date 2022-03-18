Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82CE94C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647615684;
	h=To:Subject:From:Message-Id:Date;
	bh=vT0aSMIr24Cyzd3ANfYvgXcU/gxArIgcF3iNVt5CCOg=;
	b=N6GzNOvatu9cC2MJkL3zGIghQ6tRzhEuHYZFgch3WJJuUXm0emv7MzBNm0F9Pwob
	PsqKddSvm8BufhB/N4BFw/Vy+3oltcJWk3sG9hjeUE1NkUjac4a1w6KrahfW4NwhRVz
	RAz7ZsBU4icowfbEnXLaHpv5QT6dnHNmJXNfNtwc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647615684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vT0aSMIr24Cyzd3ANfYvgXcU/gxArIgcF3iNVt5CCOg=;
	b=cNaOT6O6zsXOeREH2UOYEDaxrqCKxpRVpw44n/HsaJIGZ6m1jQHLEUwa1M/ScnQ9
	Hfq3jy8u7/LLMs23aV2qLHEemwUGnH07H1l0qHzyL/BriQh0LXCdTK4HSoGIcS+vQyh
	Ml4+aCs1ivleVgrrIH7strchJgdetI1xAjc5/QmQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d8c306d-743d35a9-27c9-4ef7-a544-4ba0afafb904-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a7e60c27a2b7b42c86b38ad0c22435a49531a3761cfbe1144e20a12b6f49a3e
Date: Fri, 18 Mar 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647615684
