Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012E2EA9
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 05:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649568178;
	h=To:Subject:From:Message-Id:Date;
	bh=r9eJk3btYyrxVkTpCF9g6wQ6Y4kxYEVXdqKDyfiiGX4=;
	b=I78KEd/Qt4A3KUhlNhbrmEqfIf6KsUqF7pQuCc43FwNiyHNHZH9WfTV+S/f86pu7
	bUEMhvgOrWAMaE/MGrtkChaUEHCyt8PnAGRJgQJH/rAK2/Ym8bughkYtVsMYregfKwO
	wS9uyigshd1S1LH1F4hyis3A/s1ZOaaKKuXLBcbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649568178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r9eJk3btYyrxVkTpCF9g6wQ6Y4kxYEVXdqKDyfiiGX4=;
	b=AYiE5yxd++Nav0mY1KHOdvhRP20QQBnWBBJhaMrsIPqQMpVfdZBi3urBYALbxxjS
	/xT3T1Jf5LKrDMY/B5zC7p/L10XVlU26aNx6SOFJ5xFmocF6klC4RRRVBGliJrPTK5S
	cNxGI2pFGgDe6tCPuPOPe9Z64j832UOEISz8kcno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018011ece075-512ea4b4-d457-40ad-9ac0-85ab00aeb613-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60944069aaf5e3898032a900ecc93fb3550bd87de85ffcf066639eb008fa2ee9
Date: Sun, 10 Apr 2022 05:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649568178
