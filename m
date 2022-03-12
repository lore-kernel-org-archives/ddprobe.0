Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79349361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647043884;
	h=To:Subject:From:Message-Id:Date;
	bh=DCFO1rsfC6rECzmKqUbwntGgLTRFAvt/hL/zAKofGmQ=;
	b=QH4bpwtd+IV+5L7bRcfM4f8llemGlreaXn1s0LFuNgQHjMJZ75rGse3gCV7O6XsE
	eePkExHHwMUx+dHKjIdP4camNjxlxqzK/o8ZfsNhPkCDZzDNABUELTeuAJyhpvjgCO0
	75pEulrVAII6/2/VXp6P3tjQUcMIGoIj4ChWRFaA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647043884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DCFO1rsfC6rECzmKqUbwntGgLTRFAvt/hL/zAKofGmQ=;
	b=bwhKZ0SaoeiC+p1crCmb4mvl+MQp0sxCgAxKeUL5jUP/b0XFhWKCsTgsPlIyOMV9
	WNqPxmH6AvOknr/okmk53PgL3RTk6cUkoVSSui8xoF9LmVEsLnHwPvKxhGlu3ts4WLV
	ip+6z5ZwHnqX0+XPPGT0EThA6O2ELNEC5Qj83BL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b7736e1-e4d73985-1865-4c73-b841-8983a40ff143-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0582b3e944d4e2868b55d861f7134644d11a52032a5fb8c2db7ca7b476adbe3c
Date: Sat, 12 Mar 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647043884
