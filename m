Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFDB2F25
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 18:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652638500;
	h=To:Subject:From:Message-Id:Date;
	bh=kw3chnb+1XCl4hBU7AYLVURF3WIHnS+A413OvYNICt0=;
	b=VcNZ+xTfW53Zm+uKXKtrDOUejoMIjZmAB+u+/52TfyJ/dXpviqAbfqdHAPEBluDu
	kT0OaP74PCsI27EoaqBamMDwLu4o6q6GMCphQYJL8f9unq5u6dBqBmx+kpUhGkGc9g9
	RVMjKVvR5k/U9PWYgVR9qPpZAtP/sUcbIULrB1aY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652638500;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kw3chnb+1XCl4hBU7AYLVURF3WIHnS+A413OvYNICt0=;
	b=MeK/jOLdI0ilnrXeLtDu9QRfWoHvTTGCF6f/7zpI0FjRHXL+tKJwoWVUemPbYepM
	BZMYE3jakMeOf5o/uDmRG61NMsGTvjLeXWGwcuIKqy/sASp/cB1CRs7ymFAOnp6IakV
	d/rK7C8Dshb9Pg7PS1CTYgbwlMKH3vxaz9Ne0EQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c8ee41d3-e938a323-4eaf-4405-ae67-012ffbd8db9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b93d0ea4771d9c0fd2d1082c9576ee2c35587501abfe83e69fd6990792a0dc77
Date: Sun, 15 May 2022 18:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652638499
