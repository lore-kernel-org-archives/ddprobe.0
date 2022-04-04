Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6577A
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 23:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649115659;
	h=To:Subject:From:Message-Id:Date;
	bh=8SP7h1sGaCMJtHRzMBEVrHNEZ65CVXWvxrCdjsCPfco=;
	b=SO/jtxXjh1JmTq4rLVPP0uWnmcusyYdaSuYzaxzXZPkdQoLVDe4LLSkBSKQsNkwb
	o5AHMGJtM1eitxETTBTScnBNo0vmEC0SqIqXhjJpAZNT9qFrtrw+xbXSXvrZHH/JFk7
	gE7apGFb4COnB+IyUc+bnVedibnDOzSzRVe70v88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649115659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8SP7h1sGaCMJtHRzMBEVrHNEZ65CVXWvxrCdjsCPfco=;
	b=LKvw6/bSJJhG3UdnifLnZs4FiNsqKmi/hNLeFIxyoF94Df8OO/T7ty3vS1/3aLOm
	RGT3t+XJZVPpx88pJQkkmKvXxUXwae3DyIJFcwGmEr4LQZ2dRCitorcdKrJCyyXU05l
	IZsti+0vPee6s5fsdPmh7/ATMoB/dQgbvI5/F8iM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff6f3f838-c4739383-caa8-4a17-af90-8206f0edb120-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de87b5f2c5cae194749fcc254415d6407bfc6d5ce7519c9ca810880098def66d
Date: Mon, 4 Apr 2022 23:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649115658
