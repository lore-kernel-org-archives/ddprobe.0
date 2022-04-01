Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9E7137F
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 16:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648831618;
	h=To:Subject:From:Message-Id:Date;
	bh=cPwXx0zXV+YGubZ/y9JH8VuwAfbCP3mjV2hlDHHXvqk=;
	b=SBb5EBbNevCAOGQXSem4STFcFBzsHCP0anAs8FSO4qTwCOq9u8ArCtf70T0i8G05
	w+OlaR4R8s8QMVX4qi20SEd6oyht2q8YGzZWnccNLlcptRKfQJT8XZfHfw6NbVeakqv
	vkL5S7Rsbu0zpD4x4Q7C4ppOOYPs2qZ7Kl92ECwM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648831618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cPwXx0zXV+YGubZ/y9JH8VuwAfbCP3mjV2hlDHHXvqk=;
	b=YU1lrCTwFQJ6X4q1a+m+LXQQGX/rLbvzYcc1M55RsRJyEtbDLKG+4W96dKEnYwxZ
	9Wtp/owTztJ/uqnMBI41C+crRVNi220CGWoVQqVBEMHVlki4+8k7QXsDVblxNZZ6GuJ
	Km37vsK7wNSr3Zl0tTVZRA8ID9R84HVlGnUBIOqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe605dce8-43a5870a-822c-44af-9781-631873323979-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe3d1214062ef93806afdb96dd14e9baf3726551fdae3221ce7c9f7ad2fc1b01
Date: Fri, 1 Apr 2022 16:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648831618
