Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D3C7A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 04:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650429538;
	h=To:Subject:From:Message-Id:Date;
	bh=F1avEYkDsqm2fqnYZ4WP42WorN+VCImwMI0Ud+O6FAk=;
	b=YyRiuaFSHKIHXBkCAU2vfKxg6yTwSziSjGehTt9r9yhyCfSZIHz+yU59QrMeDIxZ
	USIAWE3Zi799mpoBf8d4uDk12oEBRGZXr5WXSLb+fs3XCyDxZ6pYQ7h5fgsk3EnsBN7
	fU2fF6HZvmK+JLNAN4VI9L1lpl5YyDb9Sx5N83Xs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650429538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F1avEYkDsqm2fqnYZ4WP42WorN+VCImwMI0Ud+O6FAk=;
	b=KL8v71nJd8uZ73CtxkIR6T1NGD0I+xupBuZGvEuUGOQ1LUxwgGPX2bdyrOqlFDgu
	bApubyFcqwOleRlglIiQuqn44FFv7zocG5P48giKP/HhcVMXOZhNx66PJICs1wQiGQJ
	XQKxkcue5oN512UsCtV5pLH288V5a3qwDMacCf/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018045442fd9-adffdb52-f86a-4897-bed7-f2d5757736ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ab5755eac8c6a09736d967f17470ccd0867ab79364316ade6b7a47e16c7d332
Date: Wed, 20 Apr 2022 04:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650429538
