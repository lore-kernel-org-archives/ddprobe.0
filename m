Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6697B
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 17:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653760499;
	h=To:Subject:From:Message-Id:Date;
	bh=SeWBLeCLj5ZV/14VyMc/7u7ggxw4ce9YlzWOklTAF2k=;
	b=aOkevKmrY4/+fZ98U1RNpKbBtHQlpYyBOxbupj1nRnPOzCgrq5xbfj9yGp4AjnTJ
	I5Wo2WPOAn4VVGDBiPaZrPVBg2aqFD2LBVyA2yN03mrvsw84uEPuwbz2sHBQ5kjdELu
	xOrRR+n49Lt710rw0EnoWLHw5QFJSgRMGgcgsE04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653760499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SeWBLeCLj5ZV/14VyMc/7u7ggxw4ce9YlzWOklTAF2k=;
	b=GbSJ3sUHBsAXUN6itlhQb9HdMlITwjcGn6j0+G+gtTHJgVgUYG+duhhc6anA2nGZ
	Cuqhc0Ls/zQtslmD1u3orBrWfNhvsV6IaEXMNOHLg2mmNw9bbxcV9ZNuIKWxTBCRICb
	BWinwKlg63X+MxdiNYErE9ZV2UhUrIaQDmy9Xg6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810bce9e3b-2fb58afc-5c7a-4720-ab07-bfc29f31a38f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15c6b54c6848b74b7dc7d15c44b5e70222d3935938395f657e487cfd8e9be89a
Date: Sat, 28 May 2022 17:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653760499
