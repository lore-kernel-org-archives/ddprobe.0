Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD8B38FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646685685;
	h=To:Subject:From:Message-Id:Date;
	bh=6aTpxzpjoZ5tHD7+aQ27Bj99Pr8XHf+D1h4IJ1cX9Ls=;
	b=INd27Y2utpH3PRR2pwKxQgAwRK/SiMUOhdkHr3PV0Q9CoH+emWNT1BoMG5+u4vTt
	Ofjfs1Vu3249jmq1NgzdoNhjfYGzIJmWuzpFD8AYdLjcpN/cr60AfUneLa5i0dHupTu
	qcpZ5LAT0IRGCWTzjs9G4PFpyQcR/O2sEkjxlsac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646685685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6aTpxzpjoZ5tHD7+aQ27Bj99Pr8XHf+D1h4IJ1cX9Ls=;
	b=OsvCZGkQ+pzYteL47kcHgJsAqExu54M47ydGFcRmjxu6F1uqFEvBK8NxeIe5TvHp
	rlnRVkmNLor2qpgOwJ40JV1eMcLv6Wbw//BRHeT2PhvBNt2f9m3brDAguyfdG63OTCK
	yWXrlGfFuSpReiNVMLKeUDiNQUMcthmkS42ok81w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f661d8454-9ace4375-09cc-4dfb-ba69-d7a10e77b21b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33ecedbec9baea9ce215d4acc973163704bc383d0cf8a0a78177aad84bbad4e4
Date: Mon, 7 Mar 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646685684
