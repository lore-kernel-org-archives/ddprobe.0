Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DEE7B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 19:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651259038;
	h=To:Subject:From:Message-Id:Date;
	bh=8VwyTly/eQjRvqo4d0VqiDyLk2F/ok4/GMmdlbu+3PQ=;
	b=aUAOcqbaKVGy626BFspMdrU7/ik15AuiVp8YkglmeJ07u3bo/baoMjz7LgX9Yjmn
	WZMfN5X+gVuxJno1rOnZPVGDwhzXHZQuBjgoi5XNVk08LeIAxfQzbQF6Rgv2L5MIAab
	sXqsjILxwAH8AtytF9BGl6BBEv2Svx0Ts8Fs5EM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651259038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8VwyTly/eQjRvqo4d0VqiDyLk2F/ok4/GMmdlbu+3PQ=;
	b=jybUs8ZM5fFX3OxKStAQ1oHvVxRiISBdy/597sK32GZSM08rELeyCZO2w0nvvkHf
	fw/ZW5aelv7rOnDh033p4hvzz8n2+4CiVCsbkNqANK/6Omxis+CohmZt+wwT57DPW+f
	4vl9dUJcwVe6rtwz56M/XGrZ4+ldVOsVk/+tGi4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018076b55a4f-9a9d4d62-bf25-4eba-9695-18c78612d518-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a483b171708441565737e6e94236dad47e457ad22976e5db32ddd3750ac74762
Date: Fri, 29 Apr 2022 19:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651259038
