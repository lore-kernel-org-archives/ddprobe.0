Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F27A2581
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645446085;
	h=To:Subject:From:Message-Id:Date;
	bh=ylLYDSaqFsH35wzCJ5Q8fTnqiA9mgKPNI8QfUnsy89g=;
	b=cWmHIOQYyH0F2kgU3QA66Cqh9a6fyaB2j/YNApAFWYiPOgleTZQmzc+tFdUE3ejA
	ckfRTAP+ngt9yv5qS/BJwoAzbCzj4QXqZ5J6r5MR5Zm36OEqeJdZwf4r9rOJh/z2Qt6
	NlMoyhoHJjT7vwFGBvYTMG6xLSwiTyEJ877RRcnM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645446085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ylLYDSaqFsH35wzCJ5Q8fTnqiA9mgKPNI8QfUnsy89g=;
	b=Gh/EFjKbxqg/u/r1sBXTzxzK9uzhSdyBA6pbPS1YO2O0bs+V7FAwHHRQjT9USNF2
	t4h1YAmJX9lAega/Os1ZVbN1I0ClLIzcwItX6J+H0dkKt5HripX3S9+gI8Wl/mdsaK1
	bTnZdkWtxnP0KDI9kISdwEUg8wgdlTC8BlKTMxmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c3ab8fd-6c09f1b9-d66c-4be0-8af9-cbecdedd9f9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d5ec4f06c16cf23283ff75fbca08395ae8facae18b0966668470b55e2a675f8
Date: Mon, 21 Feb 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645446084
