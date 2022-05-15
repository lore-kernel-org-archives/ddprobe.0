Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEFCC363
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 08:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652602679;
	h=To:Subject:From:Message-Id:Date;
	bh=k1Dkg9Cy3Bp6UZehap96bWMO4CkcBov8F/LvKYmQ2kc=;
	b=gVHqVvmDjPJ/FigXdKNy1P8OuxsLhxxcqKSau25QnuPcny47aNHQ+xCHGMGx4dpn
	I1i1RWLT4E9DvLjQ/8ZWc2ncMleI7/60l4cMridz2E6sn6b2IQul2a7wx3RoZNcYKRa
	rVyqcxSXCM6HIEYkzNZif0s0GIbdFeLxcyl3+0cs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652602679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k1Dkg9Cy3Bp6UZehap96bWMO4CkcBov8F/LvKYmQ2kc=;
	b=FO4y1/0xml6rVnLMAcHNLYef+VZ3zpIvswBowCoVfPoxyvqnzjxhaS5wfjqGfe/M
	qqPK2PE1EF/Jzmr67EMzel7zUlNEscYiz2ho68ntJWIZMYwwGBt5Mzundooc17k+n7w
	RQMRvE+3qZOHzPNOmddnKt9o5wOj2CFiZZCEQmjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c6cbb011-c0247d6f-8839-4844-8e1b-0bddb7f9ddfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f22fafeccb6247e8aa13fa55c8ef85b1e0cb1908b314f2f6b44372a5e9a70dd
Date: Sun, 15 May 2022 08:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652602679
