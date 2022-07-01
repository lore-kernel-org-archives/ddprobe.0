Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3BD1C3A
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 15:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656688612;
	h=To:Subject:From:Message-Id:Date;
	bh=+V64hAe7vf0VOrhvefL+1lz3t5FQlIF40v8dZnjGt6Q=;
	b=gIMCcmTGMBYrr0nl3jWUNfs/Q3XEvyv5yTAjup4oIrBoe777Ffwg6hgygqeJuzJf
	vjH1SXszHmFyblNNlvvgwH2moYTFMx0mpTHPaMMleDoymmoVr2NMtqQLHfmYy7A+LYR
	tWzL+JUU10h/++tl0VzGSnr1tP5VYS5GwxWD1CTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656688612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+V64hAe7vf0VOrhvefL+1lz3t5FQlIF40v8dZnjGt6Q=;
	b=MgmWUSX6a1V5TZIERBvGqUSJDp3LAQZpzaG7jLpzvvT2FHQuHdN7WlRVi/yiPJIW
	SF9W7FV71YiLgXaWc60Gx5QKQ3jb6Y2lOu84kc3aXBBs+drL9vEut/txJdJ03QFsGQF
	crkBgR430D4vr2hL8161SJFCU4Uoi/b99+h5PnMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba5613cc-d463b226-aca9-4267-bdf7-1e5059906cd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 520a37007fa56ffc8845bd736123cce4056277f181008fec83659b30001db802
Date: Fri, 1 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656688612
