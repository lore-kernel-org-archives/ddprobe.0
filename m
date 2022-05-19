Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FA523CB
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 10:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652955119;
	h=To:Subject:From:Message-Id:Date;
	bh=bOtb3DvfzW66htuiVCuPsSHXtUKGDgqZvSB+7vTu554=;
	b=Vw/0DPipTyx/BixT160WfLO9VscZGZl11rkvNy0KKJyXVhVAzrubEIXTnAxThtGk
	jrEgThtrHGhrebEn8TZOPcnY+e4zAKkw6uZLSjV2PZRtlZHabQ1rhGHBVMAZMfPrVmM
	9I/MLpMG4GlO2ylqFH496OwNa/AaaXW1Ya0eRkaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652955119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bOtb3DvfzW66htuiVCuPsSHXtUKGDgqZvSB+7vTu554=;
	b=G3LHqNWZIP0DciACiN4lk+fp0FdFkd8m1lK1BkKOeaMuIUuqRwu922YsGhq/VCbm
	HNiaePxR7E2Pqb/asvl+0PVOSiZI01egHbt11S6ml4ZztmLL/6LCWoXRLwn2k8uJVO0
	waY6mumOgCodhY899faQGTRIOS08FuH27guVqLKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dbcd7eb1-36ec5f0e-2189-4e4d-8e15-9c25095f476d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63fceb99d7b188f5c6413f1ec24630485807d96f60d292bd4fb1f5b6761b46f0
Date: Thu, 19 May 2022 10:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652955119
