Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC9617C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 18:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649184778;
	h=To:Subject:From:Message-Id:Date;
	bh=QQp7fqhIX9X0kaMZeJFybRRwv0IOSFScw8zBZKNw3Z4=;
	b=OsLCZvEAhb1KviSvUY94i+5V8ER7E5iK4C6TVfzhuL6wbtO5NKNBWBxhdvhSFN/v
	FmS3QcfDw/qICYzcdU17Co0d4ee8wNZipNNXdG7K17e70uAvuZ3/G3d8AK7NtxmFCWB
	pre8Yt0gbFZJLDmam5uEBfc+Cz2c/Yex1cjyee0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649184778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QQp7fqhIX9X0kaMZeJFybRRwv0IOSFScw8zBZKNw3Z4=;
	b=DUJFdJ9n1fj0rlY3EM9phEp+nTtBDX9rb37dHSZaEtHUAj/5UsSqzc8UzadioGr2
	vxjJI0z1QXnl43iOwB56AEZ0ipFfiDBWO68GQB0Fsblzn5fsECqwGIM+YulDoCdqe9q
	wUtczv0619ULovh8JupjD6QCf9pwGvYMswmYRmE4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffb12a850-8bc9136e-ed1e-48dc-b3da-d2d629cb6dba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41638824934871e571fd44bffa6658e9eb61e39f272e4362c7da1b41562fead1
Date: Tue, 5 Apr 2022 18:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649184778
