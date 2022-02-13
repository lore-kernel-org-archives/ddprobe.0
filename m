Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3CA7D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 11:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644751257;
	h=To:Subject:From:Message-Id:Date;
	bh=udShtyzPZjssOBDMMgi3be4nxuyDLWvAa3WstyJvIHE=;
	b=GMOOOE6jADAd8rKbspOBc4xTrXLHwUYLoHLgnCAqosyAuh0Ml+g78ZktgLIgr0b0
	Vl2iTB/jxnQOBQcdS7HPFYqudvBna0vSdvdnlIyavZuwsXHJFsSvo1VTmoCI711FjRB
	DE0J8ilqKXeLlpEviV8aKtZ3sVHJUAtSN8FZzsis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644751257;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=udShtyzPZjssOBDMMgi3be4nxuyDLWvAa3WstyJvIHE=;
	b=LXI3ruJaD7jST+QYwmBvwNqeXcMJiqkoBGI573AK5bECvITsePgd7wE+wzXoG7rH
	1P3dsswrrHF63f9YboG6p/3PE6ob0Hsb8kwvEyCLESQjjTMqVXe2426zMaD3zRtPbMV
	Tzk4K6TWry/gkLR/HuQ4J0Lq3+BVmUzENWSGX4Ww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef2d0806b-ab1f6343-de8c-473f-baf7-d9d9e192e66f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 252812152e4503517a846569e77cacfe013aed9dfbb617f1b6d313eebfcba82c
Date: Sun, 13 Feb 2022 11:20:57 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644751257
