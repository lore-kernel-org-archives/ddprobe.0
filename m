Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5586A2589
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661265652;
	h=To:Subject:From:Message-Id:Date;
	bh=1uT0dNV9Igw3zl/aYe82ot04nZScZUpXjA+BRGtc9CU=;
	b=aT3nW9f4jfUsa0drnAw9CxlO6WXvh1XTN/emcncPbZwh8v8C7IHQPFTKKE1qjCs+
	31NgWCsgTJnCGbNfrbIcVqn9JbkgmWfcKRwiHjwafIwx36GDhiMozzhZBcBE49IDSf8
	Er40U+dVvxOyVdeXpQnirm/xVfSrp+yDoeix+jdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661265652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1uT0dNV9Igw3zl/aYe82ot04nZScZUpXjA+BRGtc9CU=;
	b=BPftWnt3TG8yhL/A+fQMAd7eQTN1mEqc89GTf9X370+mcMv0ShD2tq4qWboi0xqR
	EOVm0YBuhS2o6YcSIvUAPsm2VK9hX8wYJZ6bVqHd50yMHXqqBwHLHqG8yzKdQUKGTLd
	77gK5rbSYwnOnmxMgQ0faJfHooPBav8ZeglUyvsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cb262b5a-410d8531-2d44-4a31-bedb-8c60ce8602d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e796a5d44c4b5db411e0d4b045122cb99bcba8cf2cb180f3dddba5f6dd3a9f79
Date: Tue, 23 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661265652
