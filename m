Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02B7C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647964284;
	h=To:Subject:From:Message-Id:Date;
	bh=Tv2wSkkrngbYkBlVwM4k5yH2rNv99vQZ1XxaNzcrHBI=;
	b=UnerdgJ3JTy2pA4+KndrvG8u3lmfVwCooCg+D5G/seZzCXVwZPfwyCm19hhVm6fw
	TLaZqHZX8BM2GdRVSRN2Pqv/KOkx1LtademFocKhT2PCJ3sj/03CNv5xtI8v2210f/P
	QgzZy0AUj4J77yku/9+ThTQSlOc2SVUgEJjE2+GI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647964284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tv2wSkkrngbYkBlVwM4k5yH2rNv99vQZ1XxaNzcrHBI=;
	b=fMeGENJD5XgJ2TLcaHE1bISdWyI2kZQ1zvBjopxevTikdI3ui+azW4J+ERTBIvux
	ZzvY86GJw4ddq0cJLjg/uQAmQi4NIlYlJFhD8drRw4el7bE0lk6CNxpqWwb6QafZ8ac
	Sc8NuT27mxpu2gYzrp/kuuLAfDCiD9V+ZsgJYWcc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2536737-c3762097-2ea6-4800-b957-3a8b6e1a40c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e115def4ee210c503ea70f51fb122679b63d6593b40227a300f1ee49e400571
Date: Tue, 22 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647964284
