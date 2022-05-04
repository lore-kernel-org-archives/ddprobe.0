Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6272566
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 11:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651664818;
	h=To:Subject:From:Message-Id:Date;
	bh=NVFEoaGmP8/A+e0Jhg5+RSpZ4Raij1BMmBB0M1XSEb4=;
	b=elr0dVAup59Byax0sywaEhcjg097Q2Ks1MKtNCvF7HrNeuOWypahrW07b1M5j/LU
	MlcCzFuYGr1HZhDRw+7bNSp6U3mSepa0ZvcwlYX54/cupWsv63iRKp0icxVd4d0+/GV
	s00UVk8HbZpKf9+DymJ4PjeC3/pVigdQBSDk1fFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651664818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NVFEoaGmP8/A+e0Jhg5+RSpZ4Raij1BMmBB0M1XSEb4=;
	b=gAt46NjH68gbZQENquGdRqE15pohkdVLWmuA3iMf6oWWyZ9eBnJ6VS1vR5PBdgvY
	+ife1mHdL9J+1zBu/N5LKvkwGlm0s+aLzlRR9BrcsA9uhK+OFxSDdaJ76oZDOvESk/8
	FlnRcLibUQmS7sUjapOqeUChYPLpLdk73yS4VDP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808ee51080-22302526-220e-4b88-af9c-2f21b6ee0e22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bc73eb4ee6211cc14288865208e2eb8067fdf56f523682c1177895b4cbf2b6f
Date: Wed, 4 May 2022 11:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651664818
