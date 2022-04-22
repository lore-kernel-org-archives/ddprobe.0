Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013FD23A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 09:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650618238;
	h=To:Subject:From:Message-Id:Date;
	bh=2F+FrYuHMdDi/UfVIHPAzDal7E088hN7TGjtlp5LAsA=;
	b=CbBpR0fbR4xY2jNa4q0nMHTKUKYGEdRkyzslm6wZscd9kmn8twsv4fHdvyFI2cwk
	Kdjf7J4PNN6lVCufx+wqtgPVE9JZU0Owtoq3x1ot3i6IeuTLqWB8dJm5z4NjpZhRPta
	J84iS+cDaKg2fyEOKrA+DzD+7J7E5cUqdSh39HMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650618238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2F+FrYuHMdDi/UfVIHPAzDal7E088hN7TGjtlp5LAsA=;
	b=iTi0Rj3VdF2JvQ34i11xMSaM/DdZJNx+dh/yxj6NHnedJorXx1GJ2DQrzGS3CkpY
	M3rtFpksZwxBR5udXot+DKKLP1K3mIzTuew6P4tx7plUkzR+FIi+daV9N6y6Pqsi0cX
	vMZe4AmroAfZnI2GfremSyEvOVyx3zlPyUquTA98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805083852e-f17c567e-27e8-4e42-8e46-78321a3422e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b55483bf2e9b9862d570bf6140ccc08292a8da1fb9b4c91ca562cfd8267400db
Date: Fri, 22 Apr 2022 09:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650618238
