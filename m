Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78AB7A
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 19:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652817179;
	h=To:Subject:From:Message-Id:Date;
	bh=TPkyG81kZkanlZr+R5HJmQqeWxYn+y/wu72mUiY4B8U=;
	b=Ty1ywcp2ool4cVtX+SGnBYHLyBOEI/n492AfgMJitJRpkOJYhJH8O3hWdl7++tXm
	KNJZiwFzobi3NabIBuqVEGDEYUhisufImFyMQE0JWT77xLuDT7KbGKC1ja3iZ8r+qKI
	gkKysinRjCgFXXgegnVdYZVg1fOeN+dJ/wq0vF18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652817179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TPkyG81kZkanlZr+R5HJmQqeWxYn+y/wu72mUiY4B8U=;
	b=Ms9Uuoq9RiBQRMVFH52CI/WDwYzLkABQ2lhlr38bSSUAUJ4RvylqF6yO20h+EIFJ
	Be3LKJf9b1f1AeSQ6YD83ohlUs5L1Hf+VmXsSGGUFIlYRcrgT3Uj8u1DNpzzih9CdfO
	9VI44E2foOqZeCT4zyF354ESQ9dXuzIHAVU1pLhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d394b285-87484750-14d8-4b40-b36c-f8bc75f58021-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87aae5f8ffdf82e93b2740b7ea145b93fbb2f082c20470de4e3bb14ede228591
Date: Tue, 17 May 2022 19:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652817179
