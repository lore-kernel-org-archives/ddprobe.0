Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5B51FB7
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647407784;
	h=To:Subject:From:Message-Id:Date;
	bh=E89UCBHx1EhxM7tCOorqyNxeQGCqdaknwbbuqdInZaI=;
	b=YbzjNOrE7LfXmQH9J6CVEQ+ZFgf/+B7xw4om8GyDtIeWiZr4i/axgIA739Lihl5g
	rEEcdv9hTjsDNPyZNjCIJ70WLfXsFYN3mUxhYfnWCQ6nTj/uLwFDXRBO4R+Jb8aE3Hd
	n19mapW9apRARBwHmHndbb8QRhiunP3IaXPEsBPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647407784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E89UCBHx1EhxM7tCOorqyNxeQGCqdaknwbbuqdInZaI=;
	b=ZDEQhXMPf3dsZkr8/sPCyVLyBtEDbGl4h3QD0whVPVtLeQhPvV9yVzFN5bq2S1xi
	gHTAQqQW2K+Yd0t+r85fHiO1mT4pInqwfh4jDV04wpMRlWHmv568wE85bUcWgLtJfH8
	LXq9BKKpI+cQXuVEeTbZc6sNZL8miyv/gguT2CM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9127e30b-82146231-9cde-4877-b0c9-e6d7873d4947-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4f8c4e3eadd0c5d6225cb5aa1eda38fbe0471b0faac46607929f3954fc99023
Date: Wed, 16 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647407784
