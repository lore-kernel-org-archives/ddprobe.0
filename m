Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8157E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660587052;
	h=To:Subject:From:Message-Id:Date;
	bh=gA040SqDNuYiJJCaNuFVTEI6oZhoJGom+JCpxXc7xzc=;
	b=iap9OS6RjdMwa7g+13TIkGFcnJXRXGObNByBazRY3wzO/C8QwXDyXoAq1zGlrV4q
	cuWRnzBZY3cTNeXq7WyR69wHAyZWsNWgozkbAYo8iJAYEQsDBjbVUNxph+bJOjWXPlm
	o9ts9rvfLaVdfJzA0g51GygE1uq7cyszXfKTT534=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660587052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gA040SqDNuYiJJCaNuFVTEI6oZhoJGom+JCpxXc7xzc=;
	b=iwd6C+kCc2Q9DBy8KYiSqtc7hoZ351tFIMhVlBeX1uJNHD4K2I5/b0XhyRsh5Vxv
	k8Yxp2H9uE6xFeVaMWv5xRn8AY6OdLNIFfhlzBYSLCuK4MEsVwFH/oxCrwgVEYP/OqZ
	tP9COyrzuymc44oLSxi66V8uuekLjmK/n/bbt3HQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2b38de4-5e6ee854-5963-4c68-97d0-5c2588b03d78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a07bbe5e80e27fbecdbd2d126e664ad99a17eb191f7dde3f7daef08749a6432
Date: Mon, 15 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660587052
