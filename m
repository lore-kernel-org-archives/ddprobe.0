Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D19C23AF
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660412452;
	h=To:Subject:From:Message-Id:Date;
	bh=cV6rI4c8XdkxukPuFAS1igL9fk3nhtW8kC0MPG+wsWc=;
	b=b/fszz+VoYP7WUqtXpkVmWjrDDVVi02cqqRwiWmcMHRj6ebRIdBNEPLsQ6kflnhO
	Y1OwaFq6UfyqC0boik6JRvM6mZLHOICWboDRTOpK4WTA6e5rSxkDcSweC/omKi0xHYt
	bf5B21A/gdWhYYuRy10+rHxXkOfYv9rvf73QMbgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660412452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cV6rI4c8XdkxukPuFAS1igL9fk3nhtW8kC0MPG+wsWc=;
	b=TaIA7SZaqp3s347JJk/dDJzjBkRZZRteappziu6DN0F49JFEd2E/wPAhDLdb/eB3
	TQAlyfeXHHhLQzPP3ryG4Qp7dnJKSd0/XHN9xNjmS7+XoHwYi6/CG+ax36smc2CScFD
	r8wJWnwMyD8a0FFBYY8w0AcRk6caa4O6Q/EeSW1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182984b5efd-337a6110-3454-4f92-ab75-8cc12a1a4107-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5a3cb70dfa935412fd9032d2de7c7bfe72168654df14b20d585bbac463216e4
Date: Sat, 13 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660412452
