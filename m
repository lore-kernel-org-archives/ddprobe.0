Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A3D17EB
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 02:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657073812;
	h=To:Subject:From:Message-Id:Date;
	bh=X84vDwubs8gFOhZmmKONKKoBPIvhTT72UbUbz6QU65g=;
	b=He9y5SqsSYi9MEEJed6bEfoMUuBBcd2PhvLqk74o6OJWmZi2evU59B7BKj3XHaWc
	m/PqZuOYh7jzpYnrDX0JTzcIyaXDpTpGY7YPUK+2pzUZNlZ38/MZtWxHzhutghbk02x
	zvoir/evOvNvf8XgS3Al6KfliHH9tk03GJ33xr/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657073812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X84vDwubs8gFOhZmmKONKKoBPIvhTT72UbUbz6QU65g=;
	b=f477uzJQgOXZznI7usZR7dBNcBk2cNuvyIp43zBR/MgUICulTQQArqo7TnfPQjXE
	3V02lhpKinS1RkwBfiDvV6fy671C3bXtZNQXQDWrslSS0YINWRyB9Nz6/WNqe/eBIza
	ChzA9RF9pxU+jGpwWtoBAqWgxQ7je/2cPQZx4KAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d14bc32f-2e32b3e7-0349-454b-8697-15bf8c3cd981-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a418a489239324615b3e25077587c0b852947cbe25298be7eb2fe9f27f2d3ba
Date: Wed, 6 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657073812
