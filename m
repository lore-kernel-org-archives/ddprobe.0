Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E62A20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658895052;
	h=To:Subject:From:Message-Id:Date;
	bh=NjV85P2gmwqEzt3Clq5xhxWL942LJ4AR9LTpySJgoTs=;
	b=RGoSFjq9JlEKhcRJdemBi+7EHVEZmj3Enl19MdQT7hucF3jnprIeP4kWdbI7N8BO
	GyhKuuTJCCx59GEHbykq7+QFssNYOcJiuIJatweFk+Rvp0tEH7nIfNbGOny+uiqcw0U
	aI1V/MTj3jNcdgCDoiQOfZBYYdepvM9hcwnYNj4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658895052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NjV85P2gmwqEzt3Clq5xhxWL942LJ4AR9LTpySJgoTs=;
	b=P49Z9UWQC1W1tER5Xx4GXaDbgrn1jxwsinfV7f5lBsufhUTOsVtOlTsqNJMSNF0s
	5aWEPYQsj1uSECqk9uLTYKXNMpyC1F2RTmJ9IeixrwlnPgJjPTVhnwNjYhEuP2vGfFL
	SeUBsFH/BqJL9j/EipHVMiJ/shJTJr+DkIaWQ2eo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823dd9af21-e1e835a0-34c0-49c5-8788-115368083f15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: def9867c503ffd5bb8d7b0e439023df1b02d9740d4192616147ef06f16bdd71e
Date: Wed, 27 Jul 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658895052
