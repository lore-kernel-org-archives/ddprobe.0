Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5755828E8
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659183052;
	h=To:Subject:From:Message-Id:Date;
	bh=KBA+Ue4n3EYWWYfAbOu6ZJ760gvz0geBuTc7fG988XA=;
	b=hGENEmY7U8BZ/QjK2yZTyLu6u8Nn+8N46A2JXEZkZQ8v8G00n5Tr8ZOrGTrnTJ8F
	BRNk2lqcnf1YFaf7Q3Y6xMVN9X0JYWGEyzHwNhGxPIjPpmBsftyzAH1nja+cO0fwBhs
	TnTcghariziFMiv9pAoJcYo2W1P1LRRGyVbKQGuE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659183052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KBA+Ue4n3EYWWYfAbOu6ZJ760gvz0geBuTc7fG988XA=;
	b=TDv8/hk4j3EGaqm/qinzyQFm10aOA6Cf9OKVNy1YQFTfajcek0QtNUM8wAwwWUx3
	JMVhPmaDZ/ZSxujrDYqWnlkXnLBb5Rl9pSaso003BraOZzUpf3YHTM0c6A8wROGkCo9
	NU0QuWkumXustlLnGWZU40sqLd/IiY1G/N7qxJbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f04374d-ae72274d-0d75-47de-a164-169046d18ccd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56809562d8b650ceab937882e49f1eca807e8da9f6f99e240f727d848ae1d7b5
Date: Sat, 30 Jul 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659183052
