Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0B27C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657035412;
	h=To:Subject:From:Message-Id:Date;
	bh=IyToB3M3jtFWyzVA2XKV0s24o087gHjbUgUfOBKi1bI=;
	b=Alvu9nRD/Q9I/VzKtX/q/UGrZ6vTfkN5AqxJAxZeTMUz1y+Xf3ebEvchZqTLrasn
	b5shJ74dF9pDwEnfT8v0XL2wELG8Xv36s5/ucaKss7WmBT1oOLFugRbnQS9lIX7j5Lj
	X5ptePEzKV/91QTf59WrrEFa7fSWlXgwCKawEs/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657035412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IyToB3M3jtFWyzVA2XKV0s24o087gHjbUgUfOBKi1bI=;
	b=QSXnuplCHD2o+4r1y278rcDJ2WHGw8i0iB3ZBDYUu92FAVQ9qqZOMiy/bdkSPWSK
	yNnpVXa0OgamZVsBm+b7HrsfiUhOozSvAXqmne2HEPY0rMZnc0GJce1o47xOJAc106q
	APD8a9D3lq411U4XmFbqKcTww/qPcp5UFRxFrZZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf01d322-724b80e5-349b-46b4-8054-953b226cf321-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 068703559167368a553be4ba09093e6f2b1e8eb2ea6280820a288269b939e637
Date: Tue, 5 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657035412
