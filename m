Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215487B
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 23:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648770358;
	h=To:Subject:From:Message-Id:Date;
	bh=ncSVwdujMweqxGSx9FOLXczyMqIAH7JyeBbWXDBoZiU=;
	b=N3aYmz3ZWrKJZjujI0OmZkSUWs1xEwfEsycf1s3/y9laattd5xTGY0f42McWv04u
	PSGDKUdGkQlrjNc/7cWmIDyk6Fmg9oy/0JWrcbDURY5AuK4zc6ZthXEa7c+h4SYINGg
	5FIBN0womFmkzSWEZxs6V3I4Zt8btonBjY/7Xy3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648770358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ncSVwdujMweqxGSx9FOLXczyMqIAH7JyeBbWXDBoZiU=;
	b=HrKOJcZ0q8DcPlOnTcrj9T+X3Vyh2yost6BHABNVxFSLsugr9Heudb4pi7DhkpSX
	DN8lrsI1NEaQMNqAtq5WlC/NtHf3iw3Npf0frY9u58K9PPfyU0G+b9jsiYYWbsra87T
	wDV19/CRnDuatOo7Cmd5G/UuaiHE3mjqotR6T1+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe25f1bfa-b98fd40b-3295-4990-bcb8-dd4c82098ec2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 167c2382b14dd13aea9f83740c2198257ecefde56f26ad97eabc107de0d0bf3d
Date: Thu, 31 Mar 2022 23:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648770358
