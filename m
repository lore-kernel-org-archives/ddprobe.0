Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572CB7E0
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661213452;
	h=To:Subject:From:Message-Id:Date;
	bh=okc9aGsVYq8H52DK6UqkjNAN0EzEKsg1SynONt/rRaM=;
	b=B8m99zt87AqLT22rNUDYfYdpfS7M9m+Oim4rvXAIoxkQ4U4wLDrvWu5/1FWO4azz
	zbpJij5xAQSv6BQTQKu11xYIYjLgOB4J5K2aUu6EsyxTBnJpOuH2PelNhuUiNPUeBlU
	A5lE1LExcUuj1+2IMtc88PRkQdja4O9xTjoViIU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661213452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=okc9aGsVYq8H52DK6UqkjNAN0EzEKsg1SynONt/rRaM=;
	b=e8rSt8G8NEMo6Na+KSJu7bMBzkOWQlfwDB2/ihqjh0Kx9c40lcZyEL+D5Czr0f5u
	NdENBzeOA9S8B7gOWJnU3sLFDUHnObldps5T8lfdH01WkccNwZiTHeAzTWQniAAYCRm
	6oGHGi7qHGz2hbbDYvpe5iCAs1yeqd9D7eoa3xy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c809a927-8094954b-1042-4979-80c2-b8a50d0506d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a03b9988c188f5ab281ef9c07c7d8b53b42566cce8f04148d310fcf74d7d78c
Date: Tue, 23 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661213452
