Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A4CA52
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 20:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649537818;
	h=To:Subject:From:Message-Id:Date;
	bh=p7M/FM1Dns+cbp4AC9YSiRm/XMN+Gd3gKhnBndAyByU=;
	b=efWmaZrnkEIcBw2+oH01sTLpEPDzChVyXoRYYaohCJRCSt3v5A+8nZ9hmlaoLNLt
	fPwd6TL1+mI6j0hHhXJgF43jPQX72QIpkO4XjjqJ6z4dZLMn6miUgvuZGNwlDP6BECd
	Ngi0pM/eX3ElfcBxpXZ2SfmxfvNcwEYSI/M73fjY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649537818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p7M/FM1Dns+cbp4AC9YSiRm/XMN+Gd3gKhnBndAyByU=;
	b=S0cFWNaQo4lY8STbUVgdzyFb395k+aEs2wQarP03RuKXeVL8svBwHVNgneLpvcaW
	Kb+5r5XZGESckYJJ6q1cYVxp0EFdwxgNk1wGAyQ2wL4DGiHmQ6JBkNbjG1yqEj1NNHY
	5lCsX0/KX38hlKQdMparSgTS2aM0UIBL/+xe7+OM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180101d9ec7-efc249b1-43c1-40d8-b8f3-9582d3a19e86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57c631fb3d540c01d7dd780552a37d17c9404b1b9f4d85a68017d9f57e3b3a9f
Date: Sat, 9 Apr 2022 20:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649537818
