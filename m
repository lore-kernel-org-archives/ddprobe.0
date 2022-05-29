Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFEA28FA
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 15:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653838259;
	h=To:Subject:From:Message-Id:Date;
	bh=vPK2jadQvaCLb/ipTxUgD3zOsX6I9j4GJ5WnliBBXo4=;
	b=DM/GH10fDfSilb47yoMuXdmJLUDN0zt3dzSOy9h4SUrZq6QFujuc8BNzO78NkSPG
	kyT32zGsesH8obJ3cJ7MSmFWrMwKQfBXsl+TBsgvflj4oscgcwQTP6xU41do8YTYXBL
	5McddnUr2XB3nd4KVmjkiafaz2xdsUTJk2HvI1j4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653838259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vPK2jadQvaCLb/ipTxUgD3zOsX6I9j4GJ5WnliBBXo4=;
	b=Du3LqDh4LUWJoAYzJOToxkSrcZWrhPc+5ccsDED6GYvSAA/PkLWgIw0EZ1hZv83n
	Pj36pnf+SHL8WdzG43iTbFROtayAPyQkgvRvhcooQcCohcAyVStDs4H1s6xb5RlI4uh
	gDOExZYgd8MlbW98lsordba4BCTeWT6+ZSp6em9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018110712456-8f5edb8d-06af-4823-aebf-8849d63b3ac8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3e4cc65108d841869a2381916d7154c116581e562c98343cf73b324d82c2c53
Date: Sun, 29 May 2022 15:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653838259
