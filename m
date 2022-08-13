Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B5C80F
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660395052;
	h=To:Subject:From:Message-Id:Date;
	bh=J/qor4TJBfx8iGVBnJjVzd90Yz/M4eI6xwA4W0NigDA=;
	b=kv98qblsFUieX5IRT7s9OH3unAVkUaLBld+Wibp1TUGWH7MhYvmOi+8NHDKVam8g
	XM4oIGa1pAaJxhjuJOjfFbHN8gcYcxIoObQOO4oBoPPjj5OZHMVzultpxEKc/mckY3R
	JVALRHx6iyr42AHGmuKsPrvutKwfsZlCOE6YmgO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660395052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J/qor4TJBfx8iGVBnJjVzd90Yz/M4eI6xwA4W0NigDA=;
	b=EqWuIF4B4k0YykJVL7jZYtQLoZ/2glwDRzLtIIIRJzbjKgJleeySPcVSXVT4C5bL
	Wfn+YSA5xmG/85Rf3leQ4EPpSYjt+RSfZhpnbofC0FuzFZE7sULhUJQVakGbYNmNLv/
	9vaM8a0ZeaYyV7tBPvsDibOm0u8/WcZ90Rv9KC6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829741de3d-e2ec4955-437a-4431-a77f-de300769e67b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97a9b99337824774a3d477bed638f68f1287bba3ce29e90f85c34371fa59d6f4
Date: Sat, 13 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660395052
