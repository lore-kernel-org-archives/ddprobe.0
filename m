Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37612F38
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 13:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653916679;
	h=To:Subject:From:Message-Id:Date;
	bh=nEO42N/P4541eI5Zd/kIKeXVn1I/8ClU0EsWA6gLszg=;
	b=Mrs2MtCsxTMtZEl/J5OoNJxyg6G0iQWLxo0N2isxcmvpeewMAubMPVVy0DwXQFyx
	s0pAfqBHmVgFuVNGXuM9L4O8AciP1mIS80qKTLFkU8jD4d/lmZ/7SodL7Hy0aQ6N5Eq
	EB6qt3Y65DpnNJIpMxiQeXvVvTk9iJFuZWxTPlb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653916679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nEO42N/P4541eI5Zd/kIKeXVn1I/8ClU0EsWA6gLszg=;
	b=IRVVhuU0B66fqW/pFY2Xd43M3vRZdotVReeOfmcrfkKFyduzxulW9HCnGBn4l3mk
	0rqVuB3x7VYYyk1lvXw7BanNNbZsvt+n/XGD6KoJXUtw8w93PxasK/r2FNUV7CLBzBT
	IRJJaKl56xUewC4vmPgRX5ovqE5mZLRIzwq1jn48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181151dbc6a-fc569706-4641-470a-90d7-c8fad37bafe5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fd35600db4f7c36ab8b89ac0a82e2e68432bd783cb4715a3fb7c1ad70c8167a
Date: Mon, 30 May 2022 13:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653916679
