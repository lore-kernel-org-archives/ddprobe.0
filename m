Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F24F33C4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658501812;
	h=To:Subject:From:Message-Id:Date;
	bh=LKaFvL5xqSu1REZOyXJKh+SK337JSjElSonbdA8Ev6M=;
	b=lBxGwj3ZEgjg2P5nN+kt84E/RP2/0WZEYGsGvcx3rIfjWaR6S398zBfDlQThYXiG
	/WKbuyunJhMKbY3tFR7BCFWFrHgai8kwNRCd9VMTU959DiYXWjYHua7j9uynvESRA4m
	4LAqMQ7V5ALdLUfTIhOYLY9EyoqTNwLl1n3APgxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658501812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LKaFvL5xqSu1REZOyXJKh+SK337JSjElSonbdA8Ev6M=;
	b=icVa6lMDpfyTFbtNohnnWUTRO325LJXNiTfQM9s2YDxwFPD/n0Xf8s21d/i7llnK
	QMCzUaGQserkzl2e5ax7uxJXVBueg2REOSj4anAjpvaEWVZ1uBOHR/UguSc9I/biqkk
	CH47JYqCOORRE/fdQ1XPYViwFtwT8uyQ9gAZ4zcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018226695021-29290a0d-27a5-4f93-b2dc-eed44d273764-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8962a7e0a38ff9ef476ab8b05fbcf0e96d391df1b446b30ced8220b0f71c94b4
Date: Fri, 22 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658501812
