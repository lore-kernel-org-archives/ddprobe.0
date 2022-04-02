Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035AA7A
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 07:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648885138;
	h=To:Subject:From:Message-Id:Date;
	bh=VTkjpqShbz18o6+0C8nQs5PTZMRdZyH8A8jyIYOtW0g=;
	b=H+B0KbG9hl0a9L28tG60TwDq0fBgoqSBEi5gtfqg3NfmkLHuro+UmPw9Mfbyhw0p
	kybNvgLk+7jfNjlgZgjch5vxcHBrl7GQ7jxo2fWChYJXQZTgQlZa0Art1FKASueJcxL
	jPhCDiPV3XgVIiuqjqp99HcnrO1T38hULg9Fcapk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648885138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VTkjpqShbz18o6+0C8nQs5PTZMRdZyH8A8jyIYOtW0g=;
	b=kZmqdGF413vs7/KXC9BYf95QnxEkkpVvzRhPfJ7i1bNsCxCzwyTPmgvKXdC/YK/h
	T/drxNOENhB/dYhhsjDzJ091dl186/yE6kk7s1PZIJea+lLSdmJKHhvyFAKMOJHJBme
	WYz+RtW6PsSDASqnsECU0gBGkHpcnPrKG0xyCFmQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe936835c-0456d8f7-3c49-4d75-9278-8c2b0ae593c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acb2a425c25243daa21845f564a5d560ddb5acf35954c5c33cead84c2292edee
Date: Sat, 2 Apr 2022 07:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648885138
