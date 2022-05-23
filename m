Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60F636D
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 03:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653275219;
	h=To:Subject:From:Message-Id:Date;
	bh=DKX5etPpI9ebxVEf5bSlPBPPXfFJedxMbcIfe3vVpkw=;
	b=G4Tp7oSzE22ByOAnPrpKLUz67l/e8s0qp4Cb19coUVstd8oQi1JBcHXaTgstYvEQ
	ryyfm4Qr+tXwrrjzXMg6MXQshMjWqdFqdZWuCGCJoOXFOTw3dgffsxhAuOCKPJkRe9C
	SWk1vzAWS/kXQmvQkz00BY0TdvSxBLJUjK18jao8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653275219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DKX5etPpI9ebxVEf5bSlPBPPXfFJedxMbcIfe3vVpkw=;
	b=CgW5tJ26xA88CC+FB6WzHJ5sk91/ONe2zhjbCgJNAooq+8LwrPdTQ+7pjY7ae3+Q
	U8wBQ5rIWtolWV4QSzDn2YGd+ucAe41yBHf+MEzyEFCAuDudahqB2cvID9z4lAs017X
	ZLfUD0dcyEa0AbSV6hVqgdH0wXiidarpHScmaaoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eee1d523-986db83a-ca39-41b2-b4d7-fcf92d8d8327-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26f2c176410f9ef035922ed953f484a8db56ee4b94647367d3f066bae9cb6d3e
Date: Mon, 23 May 2022 03:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653275219
