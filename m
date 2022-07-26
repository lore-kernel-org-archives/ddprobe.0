Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81AB0664D
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658878852;
	h=To:Subject:From:Message-Id:Date;
	bh=5o0YqHLLUfNWlur/H8jUjQHIvVzLENw8oj53SpN2Wl8=;
	b=Jo7TgaWwMBlZD0QjqGJP1xM9kRQar1A7anwNGZ3VbQDcYFWCfi2geq8v81USCRXo
	FYoPuBLVEllLyd2UXI/UuwCF/4qH4Atl2rniQsTAN8cVJOaxEFKElfOK47HdSSWdoks
	Tql9EncfolY791h4bLnhc7gkGfIA1S4YaO0NLbo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658878852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5o0YqHLLUfNWlur/H8jUjQHIvVzLENw8oj53SpN2Wl8=;
	b=X3xCtD8AZcaJycrxSoGg/PJm7chDwT3rBv0zwOjH2L146Tlov/QWZJzbenYfP6ww
	PtCOszAumz0gecdii/pA9+u/BILzbkajuDIGOdcZZpNCubR36uVTTlf39zmJk6A51qK
	ieBbELhjEhgJDKDQreo3OhmUIczDMN40MhDx9dOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823ce27dd8-68710def-84c1-4149-a0a8-b981f5add613-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4dd984c3ad56faac37b8ff8e2e55b18bcc1f7b8b004d162bbb4182ee08da73e6
Date: Tue, 26 Jul 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658878852
