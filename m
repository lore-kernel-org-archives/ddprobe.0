Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E6338F5
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647457885;
	h=To:Subject:From:Message-Id:Date;
	bh=5WnqKc6RxXMYxyxv2HJRUKItHkN9+LBvnsMje1nFotQ=;
	b=bDn2Ne/ig4WK17Pa+tz1xKsX4S5hzdBAOE4CGsNHZReul+kZajzlg3UHncOMzkde
	kP6Cw7smvsEZGwpTaX9xYwauRg0iF9VarJWBymSqYHdLnD7QoQHdzLvJSElPcAPt+x0
	JmyvoaavPzcRRNFloC2ZugQuYJJsdusm8GTRJjVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647457885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5WnqKc6RxXMYxyxv2HJRUKItHkN9+LBvnsMje1nFotQ=;
	b=CU7OJTzfvqOPCpAmyamt7cq2WfGMKf8p4142MSWFYEH0hKZM7ZUKza+/ewYUrB+K
	0bjsFNf6wFGVhVit9dm933d84BDaT33761U4fOsRe6rGsTqnu2lBhm1KrEraBsAbify
	TFBXC2E3ihp6txMBpJgzKVxnKQb4EMMQ8zk30OEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f94245b74-1274e95c-571c-455e-8ef7-852428a6f9f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70c306469f5bec34a768e5a040d08ff1d38ff8e2c8b90f23199fe4a0bdfcbf40
Date: Wed, 16 Mar 2022 19:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647457884
