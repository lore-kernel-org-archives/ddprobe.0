Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77ED519B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 10:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656326212;
	h=To:Subject:From:Message-Id:Date;
	bh=lL4JL45j4b6MfK7NzLjKzgS/zflbQHHBwcU3wMvthgA=;
	b=XP79xfoF53ub3alQvlGbM7jdjIS8KuB1mrHNToP5clY9SBVbJgdg3AG21KiZPhko
	rZXAaReL8uz6sb7ygkS00IUU8D/pGzvvnQFm09tHExypzOhsVs3y99LIxXP1bnvKZx6
	35aiQE6OI9z0NAsxSBKNw9YJXYnz88qxcdw2Moj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656326212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lL4JL45j4b6MfK7NzLjKzgS/zflbQHHBwcU3wMvthgA=;
	b=J2vOHBaXu7egEDyMKkor3uejAGWZuUSrNqK0JabOd1OJViM7KriuahkxXzMCgSBG
	QZ+RP++fgalbQcRmtn4K90iI6tz2Y5oMA4BvGRiq08bpVqoXEvxPJFY0Pujnlsavxdn
	wo+tqV3pUiXG2sjK7NMU+0+jb3W0YUyOTAhikAG4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4bc4ac4-d6cdca9a-32c0-4eba-9c80-ff5cfdad1f9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05716106ca4fd196b40a841a70478cdadf05d1d7ca4652b48a4b7b3c510d5174
Date: Mon, 27 Jun 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656326212
