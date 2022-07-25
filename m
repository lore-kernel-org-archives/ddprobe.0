Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2700C367
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 04:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658722012;
	h=To:Subject:From:Message-Id:Date;
	bh=tfAfO1Mt2iOPkmprH6GjFgHCrXH7twnGmp9aZhkXO0Q=;
	b=AExRCYT8psooDsMX0Qng/F/4bpbKtoJZDoeCOn7dLhjz67VoPf2EPRg+oOdw7gLx
	BesXQxRrC9xKqj9Jc8PVEcMuzSkzfWjxQ/iddGoUBbAt15T2pKbwHrPq6lLCAsnI/EB
	UupjzX4gsiLg/5NbKHhBL3jOk1M+Uq53aqBg3lTk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658722012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tfAfO1Mt2iOPkmprH6GjFgHCrXH7twnGmp9aZhkXO0Q=;
	b=VcTsHBIYosP5f9Y+xM8dhs8AV14gFU+ZTteTg4mqyZbIiFuaCLQMawf4Ux1vNNZk
	S+3cgewF3PVlkdfgJo0w9L2faC58reuRCKhN3cQdr+Tbv9sm/ZQUQMJO5MS86RyHJgw
	BMp9HJ+S/wkFyxLtswpK1/jvrKtBc90RjN/LTi1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018233894ccb-550140f3-5922-4d06-98b7-93f0e94638a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db1ec7b49f935b4bf9e1b69fe974726ff1fea6e72a74bcf699eb233d63cb8d70
Date: Mon, 25 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658722012
