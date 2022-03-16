Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981A33B23
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647452184;
	h=To:Subject:From:Message-Id:Date;
	bh=dVRQJeWDIl0EJkYFEBkVdoLHfK8A9WFsujNkjADanio=;
	b=C6du/VT5wEZsHmQGPVmzSaRH80Nyve/GSp+NVESvP75ajhPGUvytDZzDqb4pqwq+
	LJtzxNfnyeb8bCf7ulbIl7g3pAtuoDb4UWTUZo8aeTp7tAsSIqZjk/6K4OX4NIjdOQ9
	eTfFkFbJ7sbHELKVu8ZS9GWhTkEqMQseANTQ+vfI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647452184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dVRQJeWDIl0EJkYFEBkVdoLHfK8A9WFsujNkjADanio=;
	b=BTtMcjbwAqOtNW6Dj6IuoHAQ54k6sJbIW+enuZfCQKdPuMyvtnHkXiVGSMNqNupC
	HNeManWoOwGNtXAjWafCLivs+I4hT27dLbgJ95Ux48/LGVHrq+mBMH9m65iDr3d3ELb
	98/yMEAF+MP6tSWI5vWUSskBWWBSUK/+bi6MxdTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f93cd60e9-de102df5-73e0-4e01-b7e5-40b9d2b45c9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 265550d5a8c1ab018b257351f8002fc16a2347d9754a024213780775d052c868
Date: Wed, 16 Mar 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647452184
