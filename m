Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734DE7A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 11:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650712558;
	h=To:Subject:From:Message-Id:Date;
	bh=lVYGH1ar7djSa970lpojeFlk4I9Cup5bUHgNMmT8seM=;
	b=N4MhHCggex+xe/lxm78mbhWhKPp4Qbkm65Ahu69UyRkPN1P7JOFbn+1K0XmBhq2x
	pRqP0yfNAaZxndsJPHYxUmJrgIaEs0Rhi6zKDseI9hNx8TcVU1icNPMDas6RQTiUpSd
	NVTUJq3DtOM7+DqqsAlpKthSSd108zdwrYV4AOXk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650712558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lVYGH1ar7djSa970lpojeFlk4I9Cup5bUHgNMmT8seM=;
	b=hh7FX6qJBBhlNh3bsgtl45DTH+ZDgk/p9nTF/O29TBCp1zdfWHnTHkKiLk0q4xNO
	frAvAN5SfxG9tHWsR8UW+SlUFfd4ya/ci0PNhw/4FTGuLwdxZ7KJZDutHtnX/KWLmdk
	d2RRP/EQe6uNNfara5OxERnscpQNeKtc6ZvHRo4M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805622bacc-131a15a9-89ce-4d0c-88cf-8f0ee9858f7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aed2173359148d08415efafbc689bf719ef101e3e6e20fcc51832ba5286577ff
Date: Sat, 23 Apr 2022 11:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650712558
