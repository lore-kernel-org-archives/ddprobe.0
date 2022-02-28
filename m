Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B50559D
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646057784;
	h=To:Subject:From:Message-Id:Date;
	bh=cErHeX4QRx49NP26BinquN8986FeJC/CeMh3FJMfz0Y=;
	b=Lvwr8mYs6ahbuE+GSxjuX9J2pic2RQYk+3y5qGC+wtZqhGcO4S3ILpOyLIWstEHu
	SHizFxK/E8BZMyhCLi1MrC4dXSZir/o7ynLW64+vR+P+K2pr9GRiHYyOaKahaeo2CBZ
	jp+kpBLWNPiOO3SS+SRD7+to6xWhev7BSoA8QPzY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646057784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cErHeX4QRx49NP26BinquN8986FeJC/CeMh3FJMfz0Y=;
	b=URyxYg/k8WPtNRFxkEvjKiWuWvCMBlaAt9aPeNjz6hpo8Gmq1BD+GIxEA9s1VS0Y
	nTXiOLkdaBs3Ss4ElVaBMpf0DNpNQzvYRxjMXrueNlYtvZg+5gQSjZOPmpuMlQUH3EV
	tNpsmiussqhGPWAfl5aXCQrSaVm5b7HDUNT7Hr8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40b085b5-16c798a1-00c4-447a-aaf0-973a437f5f7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2a3da6c426b335a9d510da2fcde8b7b0529d1620e5b41f02e05871f29dcb2a5
Date: Mon, 28 Feb 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646057784
