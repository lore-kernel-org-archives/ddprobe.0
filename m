Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3617B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645903284;
	h=To:Subject:From:Message-Id:Date;
	bh=LXgGxa8+T6nacWl6FeGzqSNF4oOLBZAyyks8B0xYPBQ=;
	b=ZSdfIDpKgCVV7woDqSGr8xpB4dwZLvwFbJITtda86LCouyRoQkwIl/swnAizVxBh
	9FG2IrqbWNmzo14rwZS0yWTt5zaHirAKhNVWusLFNVhajPhrfr83SnI9DFWwH0LPc4S
	OBJNiEHhskVhg+FT3TkDGhdFM2ldzVP8ve7/URhk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645903284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LXgGxa8+T6nacWl6FeGzqSNF4oOLBZAyyks8B0xYPBQ=;
	b=IqOufOxPIDN1r3umSzQPPpQ2VEPLjsxgS/Ss1aGIGUEW+m2FaxCz5GCQynvmj+//
	lO0aZAj4DhJU28TWL0qeXaHTZFfGHvSdsV/Q1fev0J7/tBXtbWVdtQQdKkmr9DykHIF
	3zdUd1HBugpiOnOr7fmjdrZvzezQWPxIBS4BVmRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f377b0a31-0021625f-5dbb-4876-872c-fbab1ff6e584-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e738b60aa98d7d581c1ce8a576ff060066b064b91d8f78ac6fdbd7097bd9cab
Date: Sat, 26 Feb 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645903284
