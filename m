Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1445D3201
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 19:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650741838;
	h=To:Subject:From:Message-Id:Date;
	bh=yQSmFsVLan9Gyp0bRW4a0nIrnjHTFOTEvKDYbZ1Z8OU=;
	b=doaq4FnNiO8yVFnU87pTfj5xOKtoAtiuV+v6LFPjftg7p+zxVCX4RNdxeB2zLypZ
	59iEf9u3npGhuwwg9rv5g8WNua9FigGA4DltV2kQHvxswQpbsiPWZOytxeX8MKnuVjO
	qGk/lwL/4pXkvvO9OYv+5R97Yd3HrsrCiqClC7Ko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650741838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yQSmFsVLan9Gyp0bRW4a0nIrnjHTFOTEvKDYbZ1Z8OU=;
	b=XjM5uUrHqGEFRvQoqZt4R3+RYzZu2zqyE8ZSaZxBSEBgETNJ8xerGGNK3XqyyYs/
	5WGSqqfxCH34uXoCa96mA3yubBv7fIuxApDZtNTneKSyHMcWukLQeHWXB6tLRG6irDV
	fKQu2PUprRmpOK4H0VBuxDUOmydb0HJRSrMt7E+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018057e1823c-81b404a6-b014-44c1-b867-c478fdcb1b88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83f174d861ae28d4ee9f5cb5efa2e1522f1332a1091f9baeaef913f24b0aeb61
Date: Sat, 23 Apr 2022 19:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650741838
