Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B117E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 22:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653172679;
	h=To:Subject:From:Message-Id:Date;
	bh=1rCnhBw6PIYmNjscNgevMnPnufkkRBOgZxUT8AO6bD8=;
	b=cS8Z+zZETi5QgmQVES87ZfBJ/24OnWkBqo7J9xXbWDo4VIiz68t+7Q0CCPqiYb/V
	wvwueS4d79J2oUpG14SWvP8RJ8u4slClbJDU3s1hbsx2VgXkVuw4dv132lGpZYXHZ5s
	7qHZwTlAkBFVdUP6buBLleHdaffv6NX34p1+gbbQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653172679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1rCnhBw6PIYmNjscNgevMnPnufkkRBOgZxUT8AO6bD8=;
	b=J6ah9arUvuDMlYF6WdGAniqpZRpNxF7zDleG7Yd4Wbe4ZGxXUsaN13T1JSwVl+dX
	VZKYea2lSP0mHSah4hoMoCNf5+ByuinITGQpYQcEpfPa0rODQR2EDvdkbwDFiMwqrjQ
	BXndaIudfuS9wLT6Bpce/Ikc7aboG2ZoZTaUunMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e8c532df-fda421de-44a6-41b5-b60c-bb5a000c1e07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef4f75801437bcae9c5cae2aa0d6d8914e6913a419f9c5ed896aa5ba7109f0c4
Date: Sat, 21 May 2022 22:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653172679
