Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320FD20E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656364612;
	h=To:Subject:From:Message-Id:Date;
	bh=MgtYdplNkGU0TJgi8C20Q/KJyXZz/zaKdqceO9dFwK4=;
	b=A5s9dHxxYk+fCxce/O7YAqxtN0wFELDMZonnPmqkNHicx8V0KyE9X2NAnLu3Edvb
	Mru1L0kl5GGdhO21GjR09fj/zfFA3J+HGn/V1ZEHKJGwVodXfya0eoGmtw7VnsV/Yk6
	luxRgXjzGiob3raxFInkZE81KQaW7ZSkNBu/e+WI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656364612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MgtYdplNkGU0TJgi8C20Q/KJyXZz/zaKdqceO9dFwK4=;
	b=Ar6oFbdVaDdkEhPwzUrcgyy134UNcA1jA57R+z4HZaXsAl/FBAOlVXw0fiH3Ce0U
	aNODpgEdzvvq6mt/d+Un73xR1OpAF/EPu9takZ/4gDaG3HVamTHEqKG3/N0484/i8tI
	TF6BSBNdoirSTekFPly6Dq/kjnCHK7sM1oeJ78NU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a7063ae8-713711c9-8181-457a-83dd-0a7dcf5ea277-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13fd2ea7431a0258f60dd9b06add5fe4b118db83e849c42994b23597bc52b779
Date: Mon, 27 Jun 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656364612
