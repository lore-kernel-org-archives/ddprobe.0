Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9FB362
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647821185;
	h=To:Subject:From:Message-Id:Date;
	bh=Psy4rGdfFW1nc6ZVAUJzf3c0AdgxHMVhh5rvGR5d9fQ=;
	b=MYG8ocaL312OVnTm3xCypg5I45JcAuAPoTOtwK0LGaTUac80e4YUYu6EzhPCZwYH
	UBl3lXPtI/ag9lK8DCJ7Ad+MBlPaShl6NVEboHwU5fyPX/cKfSGmEStgyj3V3RZ6Blc
	3fY6UonHsFJGHt2HXf7ZBQEULPegc3LED541trp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647821185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Psy4rGdfFW1nc6ZVAUJzf3c0AdgxHMVhh5rvGR5d9fQ=;
	b=hym6w+G7VSM8gU6GX42n09USG0GGiD5JBT7un9Ft0RhTGaFPBHt/bxtum6QDdvvO
	M3TD/g656jFHhvuWZSmELx1ELQDRChZii2sFAAei81N5UuLEpws/KoZ5hthU6iKGyre
	j/U4w7/cKh4LBUZ220nNtNB/53NroRDENMMv/FkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9cbdf0b-2474a20c-7562-43e0-b8c5-aaaf0985dc21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8db17d22d5e08540d25133a4388e209a0bea075a846d87af35887607e3eefbe5
Date: Mon, 21 Mar 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647821184
