Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3525E15B4
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 03:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652239139;
	h=To:Subject:From:Message-Id:Date;
	bh=E3ZY6FyQaz30suU3328oGM8nkl4lglQkW5mo0zWoDCs=;
	b=G7FbAZekbS7IQzMTCWo32X7l/pOZAHEPMwC0g8KFystwdZ8PPnL3j+3eQaTNsvUi
	l511/AYhHEgPCxhLo5b8KQ54eq5POUkV7bJGsxpOBA9nBIk/IZHwKNIFS8Pumk0nS3d
	fcrwObaNt8my4qU5IqP69bXEZc5YQIu4z7a9z4c4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652239139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E3ZY6FyQaz30suU3328oGM8nkl4lglQkW5mo0zWoDCs=;
	b=foCNCPF8dWJ0v9aqlS9m5U5k0KQA4qxIKZvKQgl6t8dJ7b5rfxLe/mfIstbCxD4w
	8ehgV8VK+9sqtGCWHk6bQre/UWKj7qYRB9NTKbtAitUErV54sd5TZibYaC/z9dKJKlY
	s57cBigmC7z3OcYG3malhDEl1j/iaI6ZrJnO4Edg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b12081e4-26598a06-364e-4f5c-b73d-8a316306c27e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a72eca46dbd72547eacfedd18b9a82e8cfcae81e1210a6346286f40ce174cb3
Date: Wed, 11 May 2022 03:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652239139
