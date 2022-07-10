Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1185210EC
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657421812;
	h=To:Subject:From:Message-Id:Date;
	bh=WsR4G0JW0P+20P17AWyJfEe4A9bwjcjxhouSp7ziKVk=;
	b=Kw8XDUe2eT6gS5Ee+zTZ4QFlv9N9CZtZmagQPpFvfMc+mHXThK6qFgqSyXtOj48J
	SaFmarjsZdE0E+7GVez9lj5orf3cKg22nytjOjSj9OkN8EThAj74fFmKEFZu5z5DE12
	KBTTsigCCCrSSP4OPi+LS4Uy66R5le0T5y4lRv+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657421812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WsR4G0JW0P+20P17AWyJfEe4A9bwjcjxhouSp7ziKVk=;
	b=DAUcA49QMtaMtfXpL7eQU2q7Hc4xGQS7X8C3MQ+Z2tROlcYaPeQCIYujeu2wNT55
	XP5q6hW777laoMFymd0Vz8/iQAG/kNVzwpUfPMcDrYtRJ4gpJ3ERIlq3rzQT2w3wq/C
	8lpjjhNZUDQ4oKc8DWyRKBLJ/7FWxSBk17KiSBzU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e609d2a8-34288b6e-9367-45f2-9235-1ef690769c23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edb6aa259a00e36d73b29d136d3a869f6c896ee2d37edac461a4e841dbff96f7
Date: Sun, 10 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657421812
