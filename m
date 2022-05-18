Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E744690
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 03:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652844659;
	h=To:Subject:From:Message-Id:Date;
	bh=mGMiaJ8Wx0oz8MZUsmU5/JbKeQkptvZwNmHRC8YG/0U=;
	b=lUa+rm1Vo6XHjTpRs6GbsNSQBQKzQrLrtxseaNOBahOx8pu01J4zf9zV/l9CQdWd
	cVcstbfd4phg7FCcGNu6t9zkU2E/O8cmCMCsyqiciHIVxyfi/Smnm9aBAHG/46Az6i/
	y+RY6/mQaFYBZnsAnyerYcXvySN+oE17gxpnDF6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652844659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mGMiaJ8Wx0oz8MZUsmU5/JbKeQkptvZwNmHRC8YG/0U=;
	b=CKS5SSb0GmwyiHjz2VJdTrPNyuruSmjzPVRKxuXtC3DNk+dDVDAlC3fJyO466kqa
	9KTqPVhc/Kye3vD0Vwj1/IbEIdn0s/2Epk7EnNHkQCsZPR+PV5O+LsYwbScfFL8yLu0
	4OMtZJOszL73y3+QGlg9FJHcF4oGK/RfuSuJNpQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d5380256-c40354c7-3ded-4db7-8d31-1bb515b9eb8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef8ea8bd584abea6e1efacb2d7fe9ca128be7a26a8575e0116236e1c1577b516
Date: Wed, 18 May 2022 03:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652844659
