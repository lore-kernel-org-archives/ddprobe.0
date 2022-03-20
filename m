Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCE120E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647744684;
	h=To:Subject:From:Message-Id:Date;
	bh=AVSnrw1R2mbdr2jgMiVnQmo785rRFLBua7fzwHTjpbM=;
	b=bdxh/IvVYrVMjJV6FYHii1XqbZ1Xz8SEsO9ZwBHtsAImeDgasNogANvmcxQ+VNwI
	tTbaWy6+vmNefHPnC2WE+8XrStktpB4gydcCcqjkXdwxIT0ONsY/OUn9ZPzN7ceKuR0
	sz0Kgv+hCuGwNoh8uwdsSlyJ4I/d7Ed+1iZGCi78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647744684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AVSnrw1R2mbdr2jgMiVnQmo785rRFLBua7fzwHTjpbM=;
	b=cgMsZqL0CMRoobtDsr1vAZpo2AQDcWkGDZ5s3/QouTpPauHSk4fgfUURXZbG4sxn
	SKAInMa9zgow4eHM/mgJB8//zUpAF3Fyn2d3ONHwnqE+UvJPybRMWmYsAj5LHmUiIy5
	q7Ysg8w/o4bmzXmPYqW11wDMpHmAo4GFZ+o9e6gA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa53c92d4-cfefd41e-2ce7-4096-be0b-f1f16ddb6316-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dc519d04ceb0f7ca722db1717119a503722834794abce9f02c9cf80786880fc
Date: Sun, 20 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647744684
