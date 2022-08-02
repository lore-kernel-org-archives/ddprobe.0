Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3491C7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659472852;
	h=To:Subject:From:Message-Id:Date;
	bh=mIGC69ef15JJFTYMD35u1yOugS/a9BqMn97O7zrdoqM=;
	b=R+EbYEXTVNW33hI7H68XttukFA30PuiTxBJdHH3TiExuFzMcTAQcpAUHnox+C8Wi
	DZkLSrJVUMLwZ5VVdstrvqtJ+Jk2up1jlIOVMqsLpy5/WJSjzhA8OUDM1IR45KGQerc
	l5II6Z1NeDkQpZjsQa8Wu7pXhEXgxR72U61NVtmk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659472852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mIGC69ef15JJFTYMD35u1yOugS/a9BqMn97O7zrdoqM=;
	b=hkU/sIK8OwOf+TbGAfeQivp0fF3IUFE6CslLngKOdit1FmTY+BefOhESx2pVW6K5
	4kpeBaTATN90geLo/x48ATBE0Sgf5Km9LKMadT8qBEGqcTVT/WrSvZkDeLIC6kSpCWm
	XyjNXx/wQkaK7UGHwh3c+RClkTiPT2/ycnkGD85o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182604a3654-95a7d801-72fe-4e95-8580-26f52d46a330-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d81c9a7a15d79ab51cddd5e83081c8e78a87f6b3a15a97a7276f00cb99914f2
Date: Tue, 2 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659472852
