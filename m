Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4867B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645491085;
	h=To:Subject:From:Message-Id:Date;
	bh=Wvrsex6yWrouSmHbS/NE64HJZOoIISEgKDRQuFk3Pyw=;
	b=j1FFUuvNA/4FK4WlCy/O7gUAjM2koxHgVJZfuPr6FUGL+qdxTLh447xM6v8K51DB
	fnnJabObxR2YbxNP6xp1+f05WOjXfkK1qkqwqxWCYmtjBx45JFjtuEsZZKiuJAmU6n7
	ug/a/YdKHD7sAt0QmTwxRM+Kb6xnRzdoReNVYW3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645491085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wvrsex6yWrouSmHbS/NE64HJZOoIISEgKDRQuFk3Pyw=;
	b=YP5wjOI7QjwnPRy+5OIXTAX0TVOzvn4XhlHlEabJKYJBcfXl+4zfGtzJbjs5ey2T
	CGT/tDfI4CZhbu1c2BjusGPylFckl4PZkj+a047yHqq7xQTp+nsBaNd0B8DCc6cIsID
	CPc3awqhLq3cY7UE2JFQFcCnIT3Un6urhcVMiGoU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ee95e0f-7bab4ab2-d25b-4546-9ea2-4d22fb16efea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0feae46bb07d584e057fc1b9157049c54b43fce8a6e6dfcaf70a2a1f6f674d6
Date: Tue, 22 Feb 2022 00:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645491084
