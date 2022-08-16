Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF301867
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660621852;
	h=To:Subject:From:Message-Id:Date;
	bh=DOR5lytLjuyMexiiR8XUanAFu66jz9Tm6d7OOJf0otA=;
	b=MBm+078ybXSRHbB61IPygweO2TNoSohS6K75rEkfdPg3DJroKTttRPfdjxQRPCZv
	eoK1uhN0cLp172E8AdcwdNtLtOxRYWYIk2b9YikVRMm6SiSb+ZFaNOcg+wdspxJFlyz
	F4o2atfZrA2bOqO748F3UXSdNcmnccGi2hJRy878=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660621852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DOR5lytLjuyMexiiR8XUanAFu66jz9Tm6d7OOJf0otA=;
	b=k4Nz721TRDRqN+yJYuTp39JaPt59pcxclXP5UhIXygdg/REE57wOAuVYh5ZLIAqD
	4XWyPd11XD9Aia/R0adDm1yYyD6NU1s5gZoz9V8XbQpLCXJDWU5PFgRrpEBeQXuuQRb
	1+JiUiAmsIFTxXUn6BDvp53eOEsEkhxe2VS47xFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4c68fb4-5fab4eaa-6e84-4197-addc-1065331d5f30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c0b22bc6f75c0a550a6be9dd48581c40a399a368da6b4d11cba29500de92f42
Date: Tue, 16 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660621852
