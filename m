Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE1961FC0
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 17:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652118478;
	h=To:Subject:From:Message-Id:Date;
	bh=pfjbACdw/uvaIJcj8vQ93OxrmXtAJ4pux+7WafYVqe4=;
	b=DZVTghC+6vMOJ6QyNOuepkHn9VE5BZILe8mmFR66yAI/g4d3oki7UmnxDTvOjE8b
	9b8wn8E0vRSJGlJUU3ot3rkw6dOOKroHZLWkbtMuQjvPOUTi3zuCW9vQrENEM6vQwKE
	lZgFB54ikItjTaOmAsJu33jZeFbRqUasvA5MK6oM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652118478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pfjbACdw/uvaIJcj8vQ93OxrmXtAJ4pux+7WafYVqe4=;
	b=BdgxrkYmOXkwtmaVSLMgVpZn+PRSq0Kji1fW9JoRA/EadgRacfpPzW2GkXeD9Ife
	UAEzH+rLex979IZTldXHN2bPlCLwgBGY/9blaOoB2q0bLrf0BFdWiDWpqziNS9dV1gL
	8JyO/w3xmS9+ODEltiz7OcKnKa3H5ZRQvkP/Mk8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a9ef5dff-66a7c7ce-6cd1-4851-b661-930fd25b16cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e28e41093629b1b12bbb8b09c207587c75cd41131c0ce3b6229d8ad1fc80df6
Date: Mon, 9 May 2022 17:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652118478
