Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FE12915
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660816253;
	h=To:Subject:From:Message-Id:Date;
	bh=J7kVhmbHUQn/YWfqwMd0hia2TbTglWa6LhRjSjYEZEU=;
	b=Nr4HnrogVEdAv40h/1c8L3Pk2k0/8eew9xhmRn2mxBopxlj17CBaMGOkDzJttqlk
	QALbYYJKVktTXKCQcn/RnrbZZgE/fj9H+Ai2gCEOzB5lEa3IrN8VjSaF7Ot6kjU9Q3N
	AiAdG62Yfb5Nso/Va/ywL7HUbrCuTNHYccADo130=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660816253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J7kVhmbHUQn/YWfqwMd0hia2TbTglWa6LhRjSjYEZEU=;
	b=iKk/naDjJ9kejmhoFLP22JBChrd1ETVpwVkbVtNSNQWVVnuRVBjJ7Zhk4PLY4mqQ
	0pw0HogedYTVqp3OISL0SJzWqJxxQR8WfbSzzvXzZyduilAgb6WHU/8oY8z8XpGrfPO
	P+008+CUYTQMcrUb6mWmrM2Rc9DFpGTXLGw4XXbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b05cdecb-f8d0dc7d-008a-47cf-b240-e1d82ab10c71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1590ddd785f100ce94726f481abc9875b983e1695bfd90ba890082f23c31d7e9
Date: Thu, 18 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660816252
