Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305426AC0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 23:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657754212;
	h=To:Subject:From:Message-Id:Date;
	bh=2PfW+7/5ZMaivl1GQp75HOySgNqZeX9o+1SHH9oEpR4=;
	b=bi828nbrWH9MjZMqXcLoi6YkK4/5Lj6fcgZ91z6ossvLlqD/C2nYfAM39zDL6Ogm
	h3gEFA2fnsOr1qWx2uDUXzLYI6R2KKqdXqKzTR+uO1rRQudK/1PbrDkUqx+x3JvN/6D
	AlHlAct/038Ee57Epk2sd9mM7Ef4plogZzaR6Z8U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657754212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2PfW+7/5ZMaivl1GQp75HOySgNqZeX9o+1SHH9oEpR4=;
	b=S/E1ZRG6e567mKFx4CyPCt8hAJTb7K8/Rb3s8KYxsp+N2PguhUUqCOU58W6UWR90
	0rit2cmbSS/n6nJprPVGXDNpWYEHg754bFvbq4jfXbU/x8Ew3QrUs1IloezFacbkLsu
	7lE237HfDSg0Dp6Ec39a1utKtRS03ZCAqjmbt3JU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9d9d7bd-4c0a50c7-fc53-468a-8a1f-2bffa08336bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a32dc7126ecff4027baca7af55e04b54ccd9e8b04868cbda1ba2c813f1069b96
Date: Wed, 13 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657754212
