Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F415D33D6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 19:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650049498;
	h=To:Subject:From:Message-Id:Date;
	bh=Rg77WG2Mrhgd+sxa5x3guPV5G8+N0/zcsKUdHyElvDg=;
	b=KUh5AQvTxg78XGRUTnR2DqfYIDXpi7bOr7/WeL/LMFq1pEFDv71Ox2LgCxFJ9SqK
	LSGcDYbGCuwNbefO7tJ095l673/MZEyn46QraNrFtIHwsBcvL8s/9uxw4zsCRevqTtY
	Qi6vHRIMXC5JVsoJ/1bC0XugsfB3/LsUKQTUG7/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650049498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rg77WG2Mrhgd+sxa5x3guPV5G8+N0/zcsKUdHyElvDg=;
	b=EaCxZ5cjZp1atFCaa+zeSwek9Q66WFpbDt4UhKqg2Nr2/bnnqqp5lm3V0Y4QXHek
	47whhPchXDowpgbFJivACXyosLNWB1MP61IN1gAZvRlZ9kJWScsXJuGyfnCUWprpv2/
	Z9j5Ansj63F+CBeaGtIf+svpJHOQA5XjaNBDK3HE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e9d3c81-82ac2ca8-0ddf-495f-8b45-184f7a982d55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 490128f361dff10a9522c2ec2868bc2c0baa86c7d33b885ae46e6bcc5930504e
Date: Fri, 15 Apr 2022 19:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650049498
