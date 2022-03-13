Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4A5816
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647156085;
	h=To:Subject:From:Message-Id:Date;
	bh=DQMjAz5Ar0jXW442XtGVAtLQeCStRtusbDmQVjBb7Ws=;
	b=YK9n7wnJXO/PcsO45aZDI0kpxzl1tQEKaSE6sRtjU+aPs+f/6ztwaqRav7biYkZY
	afpmNLuP35uMGz7+So6jH+Vkmc/SA4P4jjdr8TORDhOvaf6goJCS0hHvnHQdC4hcPAO
	ViIbZ91bUqKHNaiq3QIEpS8VCaBeFk9c5KqT81r8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647156085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DQMjAz5Ar0jXW442XtGVAtLQeCStRtusbDmQVjBb7Ws=;
	b=AxNr8gfBSVJFryaH3IXEzMXhGwNcLlU8rIvH+9Q32KDE9utti4tB8xTHQhE2ZQ8w
	bVxP5gJ+V1kbsdHmVR/E44MexssgCSIWZX8yzMTX7WbeQDx5oniduMFdspHEK24ElzR
	kB00HX7raXcdNZZCjpdRP7Eshjdiyo94TFevgnl8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f82274003-07467f7d-92d5-4fd7-b270-ff81c2881fa0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14c4fb31ae9f443f25ba6e95d7926c1ef4d34e85346543c642b63fcf5a2a86a8
Date: Sun, 13 Mar 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647156084
