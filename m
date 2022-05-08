Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231C61859
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 16:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652028538;
	h=To:Subject:From:Message-Id:Date;
	bh=iPvwHX9n09jqizoAfU2pi5M61uftaWp4FKmR3NkyPBU=;
	b=CbrGYLKrY3NgCSzPU6ddKpvvLWg5W8ZbuY+eE35LHRCgv6jht2GqsHaxR9E4df3R
	abTrfhZpmdrqWCcCt2NB67xWhi2WryVdBnB4xuQrNEv/Getusp9Fyipjo6hq7VI/SSM
	77T92SwJH6eqjy+Of1s0ERJ5UwfpuzWqSyfhGvmA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652028538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iPvwHX9n09jqizoAfU2pi5M61uftaWp4FKmR3NkyPBU=;
	b=Bj12zixCNd8bB5B3vucd3IKcvUtOw6QM/KzUhRqzrl4NzoU6Jfu0Vo4NIf5d8Poc
	rzfwyYwyqaRfd18E9or3CWrabfyOdJjYMpv7dQyWpLH3d4X90hhVdMCv9wp72gs1vHK
	gPOP7n00tNf3SKB/JcKsskZak/vUYr4lksEejEmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a492fdac-ec8019dd-b389-47c6-99cd-c2adcbb6ef7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc68320ed342549da9e1f706e3c990a96618534c821420e52778b6a8ece4c520
Date: Sun, 8 May 2022 16:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652028538
