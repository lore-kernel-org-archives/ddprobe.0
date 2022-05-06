Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5C5807
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 11:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651836538;
	h=To:Subject:From:Message-Id:Date;
	bh=kkUeg9ZAmQh4wd4AcT9xoshdn67zRc4DfF8iFckf7aE=;
	b=RHrr6JW7wdQCpu7YTLjJoBSmf945XnSVc2ibcATNXxJ4wD8Wo8WuVUkF7kY8niR/
	Isgj8VMhkK+cg8hCrn8YNfPdq9B3D7c7URzBkuyCfbvpAR0+e0w+gzacMWb1uRwmyl8
	w3wBHBJHKutPnArupo2IFe2rqgGs6PSmenRzKBeg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651836538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kkUeg9ZAmQh4wd4AcT9xoshdn67zRc4DfF8iFckf7aE=;
	b=V+MLvQJMaw+ZCLV9jJfsNNfhC5a2xvNRQv0wwnVfFb6gLHboN/VpkxucCoqM8dhc
	OFkExvdQUTxcknv5mlhHUHlhy454dBTkgFwEfyseZ2TTlZhnHABma+N8FBnjGbUi2k9
	o3SY7aZIgVUoBvHCUUyxZ6+KYVM+tnltdQnP/M6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018099214e00-fab8a29b-415f-45d9-97ce-7fa428d05f6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 958003e0db994d8b7c56195a9f969a5f2dc8e30ad4782c4702f61ffe0129f0d7
Date: Fri, 6 May 2022 11:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651836538
