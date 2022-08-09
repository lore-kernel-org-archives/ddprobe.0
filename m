Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F05728E7
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660042253;
	h=To:Subject:From:Message-Id:Date;
	bh=sx7GyacY2q+B/uJ6GNDfZ6wHgCzldtDFuE2rH6MwztI=;
	b=gdDnh2eXjsLGJxwrnhYfnnFP3i+KUPifi1LQrVx/frLgThKI6Hn387vygCt3KIvQ
	ZqjzG/SGRv4/3r6IqxKEridwtP/fl8sZVIaqIMuY2aO906JvWbGFNUDzMvzO/wkD2Qr
	bFQnWa1p3XOAYPl3CPzb0KrPeMLcQHKx71UlSvjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660042253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sx7GyacY2q+B/uJ6GNDfZ6wHgCzldtDFuE2rH6MwztI=;
	b=FrgntBKBDqYI3TPjNbvKLWEl/mIElrsif6ems3eQGTp6/aTm7WZ515DwsctxbxVB
	8huyHcx+mdtHwDwJSLNLFu5tNL2TX4OtGgew1GD7l7WJeV2hrz++1I5xmktuLnhB5EQ
	MyVUm4Fja2h7bzeqnylDaQeZYdo+e3iYuO25RWYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182823a90fa-e25abffb-3459-4e7d-8d57-9cbe30427566-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41ef220d7113e070ce637fe40a119d30a304a0a8f261dcbf2f627a0418a8e1c9
Date: Tue, 9 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660042252
