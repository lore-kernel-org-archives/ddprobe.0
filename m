Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF7A7B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657394812;
	h=To:Subject:From:Message-Id:Date;
	bh=u7kFi+NbT44h57YaXNAWunWH8RzbXvCycumzoIvHf2w=;
	b=L4MiybVyyroVyIFiie1gO6Wmka3wZ+ghKahj2+xpkQ57FW7D+hWhKqgJ/7Tp2Upi
	/cs3tZqz5HcgY68Q5MdpRA3xdtJghtKogrJ+GRNETR2ZoLRA1isi9CNqjTUV6kyDLNz
	UKzCHUUEfHClEOTHGdCMr2Li5ltSfA6TOU6aWzrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657394812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u7kFi+NbT44h57YaXNAWunWH8RzbXvCycumzoIvHf2w=;
	b=k0em47ZuDIrkEjdlwF9G08MmBNRHOmMTqJ7ZfbQ6QG0szrhvDAVRTAC08Z6tBwL1
	dZ237eoYbWqS91Wz5oOBJK2733+i3QttQa2YJMsIQn7bjwtsxoli3/yIYz/Zuytk+CE
	CWsUHe9FSBk4smBb6PDPkKh4n1m+GkHF44ZuJL4A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e46dd57c-068d644e-9256-4af5-a3ea-ccc6d305a05f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43b591dc1fba67eecace9434a5f87790ae041082d16ab64041f975b1b70dc9fd
Date: Sat, 9 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657394812
