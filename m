Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F18415D9
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659308452;
	h=To:Subject:From:Message-Id:Date;
	bh=8trD9FOxJq0On95IbDKqwjM3CSVlP+3vj0jI1+TKiLU=;
	b=WCr+HT+GChMdDpIuWZY7DU2Hbfw/0DllXseSFvxMEYcMSA7OlN0pKFrsgFD2PmqV
	JYh/DvTCZko8Ne0f9ZWXA6lzDBOl7ccvj1EQoG5oRhwvBCAmaF2SkxZ0gjUfGzKvpFX
	7fEHoYcTL7EwIaoqo4FtZ1bdW8p6q0YKrOwNvGa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659308452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8trD9FOxJq0On95IbDKqwjM3CSVlP+3vj0jI1+TKiLU=;
	b=d+QcITqdXp4kHmgkHgniQTqzE3GAzaqedXVga6SVySCsLbWOcPTT4+m28t8OlwYX
	7HxpS5umyB8lSnzgmTrfxlFUuWtJ3aP3kzXEH5jRgFP7XrHBG7Z16QMQBUF4LcOyWDE
	5Ovgv/OzU9YAmYpXAguEBrGSCkU8b4nBtoEnpVoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182567daab5-25d5bdae-6400-47e9-85da-bb737b1c204d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 360dd909313a0cd21d7c0ce655ea8a8153fd92866a6c67c449d89e1b4ab11227
Date: Sun, 31 Jul 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659308452
