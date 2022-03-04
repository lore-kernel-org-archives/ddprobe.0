Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7259C7E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646414484;
	h=To:Subject:From:Message-Id:Date;
	bh=5tEof1PKWqd17BP3HJ4TnQXqam8QECG1aMtcNi9tH3A=;
	b=KC9BW3S4JLnieiqpfl5IhoraKp42PUT7Fs/6SyUo/0rgVeBvF15zqvCuJhfN4Gsd
	M6YvARxfFnUnsRT0UYI6Mi//8Ce+vToyCBFUmYpJi56w9hTkFkA5ViKpF8UpRg3rZLH
	TT4jATY3A9V2UjK+MVuTXI4N9NF9aHwcMbPO/b9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646414484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5tEof1PKWqd17BP3HJ4TnQXqam8QECG1aMtcNi9tH3A=;
	b=Lmx+PhF1RCMRpW13Prsxdt9V3p4IcaUdkoewn01/AiAT+x9JZCVBD9X9uPM+4kc/
	iIcjsv0/ISJzkTIbD1EtbQxL8IT1aUvrJgjjfjmzoFa/Hcedn8wjFAHpaRmPJJbG5YP
	yHoT2zAwW8SAK+CB8Pig7paXTFdBBKfv7KBXqeBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55f3553b-353aa815-2d0a-4248-be04-aab3e52bdbc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6543fe1c11c6530ec9611161ad8ad6a6b7fbac1c0e04fb847be95019a4d51ea
Date: Fri, 4 Mar 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646414484
