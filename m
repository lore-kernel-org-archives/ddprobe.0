Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F391F7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656063412;
	h=To:Subject:From:Message-Id:Date;
	bh=I7zJ14pRjYdyuYBCl69Lc/KTV2M5nquGkKormsgk4hc=;
	b=MZNqANdQFuLT0doAfkDvL1RZzdFMnCNKy/MHpWys4AKZrbfqD8H0B8nuZZCiy1up
	aqSNpqtPgxy0lrXdSPXGjXIrQNIuGL2/zH+cnuiiqEuaUGPEii4EY/MAqs1lYmONPEZ
	XMhXe31lNBHADozmkR5tCa/WPeIjuF5btoO6YCsI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656063412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I7zJ14pRjYdyuYBCl69Lc/KTV2M5nquGkKormsgk4hc=;
	b=VdhZ7JhY4u7tahiHPEcHR+xU04uJpDt8eowJ1BAZLqhDmh7vL7/dZvBGFlm9yPFw
	ZaKofp4+spq/9bH2T3PHcobMKEyOwUWRCavx5fOd7mnMuRv5KSpRQZu+NVwXurBd/UA
	GulDGfDPMzoZG4MOPcZjMswdbcsR1Ef/PByJSzNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195124822-8fd5690f-259a-4e98-92e7-28ab016e5271-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98bf7483aaddbf3cd4616d26ad299ac66fd3d6f96e0eaf320261f3b5644a31d1
Date: Fri, 24 Jun 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656063412
