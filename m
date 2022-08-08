Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E437A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659950453;
	h=To:Subject:From:Message-Id:Date;
	bh=v5E46zClDQj8HN7S1z66nUlGINHsHitV7Sh5s+FLXg4=;
	b=Xodtjj7MMM/XfC826jFPNGZ8965OHzzeKEDY+Dv4iRpsK9EP1coYRglnThcWKdaz
	F7/kEJvsc51DFvbxuk9eUM/xUTaryaNFupVWIy37eF9bus/krr9NpZZxtCN2m1s1amR
	kLdywMncALf++1+d+tjDT+T8dgbnwznTo+QMWSa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659950453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v5E46zClDQj8HN7S1z66nUlGINHsHitV7Sh5s+FLXg4=;
	b=BU9LWGiqWw4x8BPes/kkHQbytUsk8dc2IY7W4HqVnzRXDsO1G7S3iDdKELccPfBC
	oiCl2B2ovrX74zxWxBPmn/P6l28+cRbOs+u4BA2NPYwAcUj1guDIzH+UwN3xCiSNMck
	5wl/7PtHd0vQB7PUlBb6HWdBmZu3xtk+bBYYfX/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827cc1cf32-88bc202b-4c84-44eb-9602-279050ac1926-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7960f34de5162e99afb36a5ef4078039c336bf47dbb8d845ef1092b404eef712
Date: Mon, 8 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659950452
