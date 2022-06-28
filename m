Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13E43FFD
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 21:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656450412;
	h=To:Subject:From:Message-Id:Date;
	bh=Efr3gquiUXlfsQ0mteZANtuWM2XJpoRU76JHF2Jsns0=;
	b=h/2sbtNPu/AVwpHORDKoXgtRc6j9pfPaYsxLQGbaiy9sIY7G10gSfVX0HezpqmqT
	9wro2LX109OIyfvEsBroLrt7Q2uuBvcKXTMgGrUKRlIihR58995hfvUEBIXVOh7y1V/
	1PDr94k8R66OoHNdW8L+QDxe5E7rmhP5IYXXhvUo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656450412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Efr3gquiUXlfsQ0mteZANtuWM2XJpoRU76JHF2Jsns0=;
	b=JHTh+78y4pQHMmqBxs9KYZH5vBepE3MC1mVrrlS/lEuPMUUC2vOLzHGSKNQGsm57
	jQjonYTCN7tRuRwTBI2sCAUftvI5jN6wHizuu/8TPgH0Yb6TNecfr2l0WRwPSiQ+1CH
	TO+QnfVMLPUgF4PXYT+OOKnEqNotpbO9mQrZbWfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac236f28-688e8493-f972-4186-8cc2-5f7b1302e27c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba904d7ff2230d93eaae662f1fad84bc76e689c33adea4c573915e1e5d94b65c
Date: Tue, 28 Jun 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656450412
