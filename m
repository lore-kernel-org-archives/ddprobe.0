Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EFE4A0A
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 20:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656965212;
	h=To:Subject:From:Message-Id:Date;
	bh=sXhzP1mno408IurzEIUyI9zuIa6tOhJhq+Ttm2yuTK0=;
	b=XE4hlykyIFsYfg4j3TlLxmWx5LoTd+eHxBMLSV0vhL2I0aZ+5ukx/Wwy9Fu5RF+k
	xxfA8N8Y2h07ero9oDCEw6PW/82xwvXJNjXLMkeiImk3cMmtiadJ+IgqtOR1zailN70
	NOfCE4QYnn18D0nhDsbW9bzpJQjDT9+hjz4Kf6ug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656965212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sXhzP1mno408IurzEIUyI9zuIa6tOhJhq+Ttm2yuTK0=;
	b=D7WiJSAy7Tv3Nert0eJOFwpBpPKPyQW6tf3JlqnY4+QoSaz1QV+xdaK3mU6oS7ga
	Lpmtegl5JLxQFsREN8+15GyH3/tEDq4XEc8Ua8uO2HVXk3l9PihQ168uzwIBI8AvMkA
	r3lCSlkD76BCwx9hG6c3Ij5Vk5gR6EZmrozmt6zw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cad2a864-a7f9ba95-37d8-4551-90c5-82d151b21df1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69529637504f40f1b4d97c3e3c3957f60f204b5e77f1804dc3b2b5e099991acd
Date: Mon, 4 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656965212
