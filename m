Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B627190
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 01:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652317259;
	h=To:Subject:From:Message-Id:Date;
	bh=SPTaMFJ1sAx2gR8D/9V+AqkJ4Zn1RBFCBhWWIe4VrRM=;
	b=J2VEYElQzyr+j2Rxxyi5Y1njwTFDYUleLHi5esaplClVQQRDEj3Oa9xowiAhxyEc
	/wKGukUzx97rHDes7vvkI7K8QtzMzZ1og2jEMpi6RTHN0I93VvbdN2AnM3Uj2xwZTBZ
	YS5Ng85UAwcuvk5+KN0YqKM36vBg7fdI3CDIKrW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652317259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SPTaMFJ1sAx2gR8D/9V+AqkJ4Zn1RBFCBhWWIe4VrRM=;
	b=ZTEYeRzgREFCzx26j+6v2WHOHkgy5nPyWijjbePcvaeP+MKth+Ors83bBEF4NXKo
	qd3RojFSst8Fjw2WIyxCp+dWHafdoaXRBhsasZfw0TZ+a+Y+C3Aey0wMXBCmpdGemZn
	WEUP5nmY4w8RVb7iEjNJK9MMOyQiodFdjhs+MLeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b5c88627-5517207e-3f38-45ce-b30b-adb2f1d2bd81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5194bbfd9de273710225c059f5658289175c24e1a75c2e5ce2b5ac1d43d782b1
Date: Thu, 12 May 2022 01:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652317259
