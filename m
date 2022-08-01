Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E017F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659343252;
	h=To:Subject:From:Message-Id:Date;
	bh=JuTtb7BnF92QJZgMD+UizEh8e2xIWzGcoYRZBIJ3Zvg=;
	b=c6iEaecD0Q6JDPFno3tcFWFQjVJt1glgBqgZMZN8myRYdVdzVDYlRm4xDF/yjtOV
	MftzH/xVYmEBnjKncBCpt7ZT/ATjZSrKpDrKoUrBh5937HiCLRVzm0YDCFs3hYPF5XK
	m/OoXajLXU3I9zBtx9PC5Xk9I04DESIp7dJbrlgQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659343252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JuTtb7BnF92QJZgMD+UizEh8e2xIWzGcoYRZBIJ3Zvg=;
	b=jLYTXijoPg8XrYcjxqxihki8dT4e/mC1ebSctRwRTVYTeSMJovripQjd4tvOzyMq
	jAl+rTNOrdqAB3bCdvUN2E9TkgtB+LuhUxmB1VV/xxCPlewp1WY9uwIYHc19ULskPT6
	V+nu3jF+hDVPl+dy8UwvJptPjreUJDXwkN0im7Co=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825890ac41-a5eddbfe-8e88-46be-a563-e507f6324b3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c29ff09ede426ae47f608b6e418c771a54e479acfb182e9cb7659c4606951ba3
Date: Mon, 1 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659343252
