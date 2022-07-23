Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DE47E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 07:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658563012;
	h=To:Subject:From:Message-Id:Date;
	bh=w53JfhdChrADpyKx2xls6KnKQFkNL2KRhjx92jSW2Qs=;
	b=aB+fy8a5SN0z80nuPY6epMkLtmTtN78qjgbvkNtbHLBn8VcQpe35u4d1YnEPBcyk
	89dlV3F9HLY/F62dKI9tlhp4J6GwNHWTCEFuRZcdhSiSsoezap2m2SSGluNRDKrgRbR
	v1lGQfIcNXCm85dXpV4BxVqnOitmnk9zsLpBszy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658563012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w53JfhdChrADpyKx2xls6KnKQFkNL2KRhjx92jSW2Qs=;
	b=AduNv6orqa//ttFu+0888sBVksZKDktlKsCBHPaiq3VCDFKjEkHfCPzDsDio56Vf
	RKSIe0+c0UKkXxZ/f12usmrfGee+gB+X0mgr3FULjcKZDq2BSYodcHPSF1T7YvcqqlS
	yW+OxIUpWml7JyVqifeVPHdeolcALq27i9XGcVx8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a0f26a8-6aeb41ff-b4b9-4ba3-921a-968f1a170a79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0ca7c8d24e855bfe6739f79fbeedf1035898dbba56d8ae147a9c4ba4e0bb37d
Date: Sat, 23 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658563012
