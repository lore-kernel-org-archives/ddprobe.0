Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639161101
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659833452;
	h=To:Subject:From:Message-Id:Date;
	bh=XL5ydzzvBZyiIzhCyEs5bEG3P6oUvZhH+e1/WlJquhQ=;
	b=d3mqzGvyQ4huOa4k+ZQuEWz2EAE58Tp7spHn5W2UNsUP83hgSTKlAtrGHr2DVnEx
	uueKpkgtgpIPcGoqi78EuBCAVv7NU0/Sz7/qmr/k5bD87a/dotyHB0AXqSEV23NFMLB
	WJSRqWgYAt1aMVmhNeHFLRP3WACBuf7JvPnLWrmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659833452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XL5ydzzvBZyiIzhCyEs5bEG3P6oUvZhH+e1/WlJquhQ=;
	b=QeNGaIRAjPojVYpDAn6qn/BGdsSmEGRMTZJtn5iBUHRujZbiEvyVeW5kueIi+jrq
	ZbFcYRYHUrDxfHohxv4St3yUaqnSC+svr4GkXedhq8p5KbS/K9IvM44OaN++K8I+JF4
	hUSMSENn5lIyIH3Qn07azSDyw2fR72GH6QQMWuXk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275c8880d-f97b166b-8675-4250-be22-c6807abae839-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5b68214c4835356268bd1fcee134b85b23d33b5320535205c4c0960fdacccd3
Date: Sun, 7 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659833452
