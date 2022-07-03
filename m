Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243423D99
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656876412;
	h=To:Subject:From:Message-Id:Date;
	bh=cEMG8VBNgz+tLItl5hCtIOlk1M9VZI6XlhpCcJ5YeKA=;
	b=Y4WPHhP08DUJp8UR1bzlgMdnrp1Gt88bwbYgPL71ijLHijhqPrZGkbgufPcgBNFA
	8gxhG3oyCNAhTS2+TtgG5KW0Gxhdyn4UCRHWL/crHpm8yrSfgUwWQ1mon5Brf1l+v6p
	IOolTcnuRT3C5TyR9VOIC8grB4MAh/KgHIj5i0L0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656876412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cEMG8VBNgz+tLItl5hCtIOlk1M9VZI6XlhpCcJ5YeKA=;
	b=PouLbzuHBGCXOiLb1ubw4xjudYq0oaMEmV+oihXuYoxlfoWwibwMNzuld2aX874E
	dWA49J4LZD2udjLaRYNGYInuuZ4tiWTFmw9lAI7sTjLa9c0eoJi2MXXCd8okYhj/Lyr
	Cm7LsSglWGS2l8fb89J0eJpN2u9IYyBfQ6dcARLY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c587adaf-fb66ea66-45e5-4826-9105-e3ecad065eeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c34dfcf14a5fd5161f9426e244bc05b3d33e19f30fc1f68b0e963758ac90b04
Date: Sun, 3 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656876412
