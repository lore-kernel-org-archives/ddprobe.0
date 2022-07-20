Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041EA7B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658282812;
	h=To:Subject:From:Message-Id:Date;
	bh=T7PGULBKJxdM+zDvCqtIBUvuT77VpPpKQIzo8dOABW4=;
	b=gjKrlNyluA8zcVqHS2zZy9bg2dL/3rQR8hzGKnyVUIs9izVsV4Lu+ruxwPQORKue
	nKWTfWfcxDapcgv9mm0rVxk/xw2lMyeqNkjtyTHzb2n6s7sVpCCIDkKpwwM3QbuaZxr
	Wu6JjJebyrBFT/gr0DYfeJxNlJdUR+Z/Q2ecq2Q8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658282812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T7PGULBKJxdM+zDvCqtIBUvuT77VpPpKQIzo8dOABW4=;
	b=CLxGL9y1bqW2Z/8Hq88rf+T3bNIW+OK3gtcwVzmyJduxlT29prEG44rE0Afayd/a
	Gd82M7jJP9UWUe6JxgpQ0y/zbKqLVq7gBYbQ/FaQ5b468/7/tTP2OGQC56UrdfDXcE2
	XdfyNOJda5S4w/CqaeXx45NBysXybTZU6K10lPMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182195ba383-b7f62022-d91a-4d53-8295-cefb47d4cc1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dc947411bb8cea892ec26d1381442fe32c8913a0e881e3cb2b02f18090e49b8
Date: Wed, 20 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658282812
