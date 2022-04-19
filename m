Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D70184E
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 23:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650410878;
	h=To:Subject:From:Message-Id:Date;
	bh=7CQnzP3E5fGBY56SddKo+Ho1TjCMKyHrlBDjhUeFovY=;
	b=Ndy2XY+JLKHuMuW6nXZfnibPt+lGUGAEWRhjDFN8egE4hhnoEZMLIilWkCe5gfBK
	jv613xbQqJfNcb4RB+JYjJn870V1ePluVygpdk2wEnO7FSOWTFkmsGZa9whfa93uECU
	ULKCeiTnAuFuxEcf4EsVuRbJKeCC2IinVgeZVMnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650410878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7CQnzP3E5fGBY56SddKo+Ho1TjCMKyHrlBDjhUeFovY=;
	b=c+qzlAyiehJnZsKMxWSPD9yC7TqZbAdi9ZUwpGmrWr25F2U4iiV9h/7WO5NRK7Bs
	WmDdFw+8n2AziWJxObQY+P204p3XcLUgbsKAFYA3aJH5KJOZPdgOM61QJzRoNj29RFX
	1g8Y+hwvS8CokUQ/9vst1HpBSgzVjnPKIiVZjZn0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804427753b-9812d710-11de-4719-af0a-e7daf07b4a6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32cf19462e498fa33bd60efa982943881f2034914ca4bb0805630fcabc824f9b
Date: Tue, 19 Apr 2022 23:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650410878
