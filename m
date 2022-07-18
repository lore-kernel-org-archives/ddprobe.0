Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424CB7E9
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658120812;
	h=To:Subject:From:Message-Id:Date;
	bh=Csp2sFxnjiKRUSnOsde7lgd47F1FJWFDo9Lj3Pv86yw=;
	b=GJU8n5pLE002E5jj2cA2fdxEKXOMgclpx6v8Mxi06vO5M0dod5jy3jpMGwQ71Xny
	kCTj7zXBVCGzmjekBHJzlkfiO83ObAr91c+H7jB2BwXxQ22PPZZmKpnIXO3SMycmSCU
	AVYH/I2JDJL8vI/FscIGgqvvaYKy+mswVaeCCzAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658120812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Csp2sFxnjiKRUSnOsde7lgd47F1FJWFDo9Lj3Pv86yw=;
	b=ETpjeFGsjhsuJVQeeIZ0eF16yEJdgLK12OGK5+zMCsZwYbX8VZ7FC/BPFIxbQt8f
	1WV+/77wXXsa4PSEmx4Azs5lvevcdD9+IWYYIi0paHp1ZwFtbj4yKhLRV13BZ39YVH/
	ITTlANTOylx03grcrgT6u7KN5GNfXO7MRiqfg27Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820fb3b705-c3f6b86e-d8f5-4740-8d42-4efd47d2c68e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9ff4d16f071ccae87d0be0fdd06df1f36568aee0aa6c7ad54a9b07ca7ce01fd
Date: Mon, 18 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658120812
