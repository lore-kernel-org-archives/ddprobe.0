Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E891865
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 10:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652093518;
	h=To:Subject:From:Message-Id:Date;
	bh=sbdrR1x9cHvp4XcYvDJkifKI63dDUbHBHFVpSm9YWJ8=;
	b=gvyCNpQ6eJljjKrrQohVfC4JvL7jwFAd5kB5feGUzJ4C7CiIS6ytS4EDedAfkrVz
	4WkyfmaI2nUXmPTU0AOR/dXY0ncL4qMvuGmsXyj9mjDrFmR1fyyYlmSYxZzF9GmZDe3
	r39cb4oyAyu9O3bgGnfAqA47YZhoVgfLMOBDHjeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652093518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sbdrR1x9cHvp4XcYvDJkifKI63dDUbHBHFVpSm9YWJ8=;
	b=WshnOANIcAd2GlxoKE4Q7x55VKT8B2r/ZUyKNLfIPvq85GZzCzWx0nv5jOqxWuXF
	sxj82VAfZ4j0GQEbbgoATC4aMmN4TiHQmNZqdXDgSecXNAeRPOf+EYyeLPWC5pIZYVf
	JFCkLTLSE9M7KoRaTvsayXZRhQjojIvccut3Q0jk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a87281d3-1921de97-c02e-4a87-b5c0-d58b7eb513b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd6d9ed4429d137a611db4de72dda85df54843ecb60074857620fd53a2fcdc5f
Date: Mon, 9 May 2022 10:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652093518
