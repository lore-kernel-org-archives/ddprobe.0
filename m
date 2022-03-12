Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354982F50
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647079584;
	h=To:Subject:From:Message-Id:Date;
	bh=FbXODAC46wP4SrlMTfmCNWwSjVSKZ87omudX/qreQ44=;
	b=Oy3Mhoi4KDrogTmb2SvrkNQ9XUazbeWwfW1j+zf6X1xpv1H8nAq7zWMhw6p0zGaH
	i1BiBhE+lYtZWx8M2pE20zNLU2CGvfLYq75QwAelSVUX6HuifOBu1XEQCTBweVGD0Qj
	ReWCd3H6yCE2M/kgg4r1SH2wYD2hqIdg40TXIv5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647079584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FbXODAC46wP4SrlMTfmCNWwSjVSKZ87omudX/qreQ44=;
	b=EID+ncDblBSgtRGTJPSmnsfBKXAq6a0bIn3VHYmyPPuAHxjRfp6VLYeBMx4VFW58
	fUTtvWJiZ0rzGoeI/PvbSuM00zs/eUcYF92WCounqyQnhKB08rBs7ZQ/FtlBdBM721+
	DGW/u/JVWsv2Ki14xUE7q5aXxAy7LzhdXFDExafs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d97f3e0-09603d67-e54f-41e8-8148-ddc1e80db38f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa73f6bf0feacc7bd3bf3562beaeba26b460b435254e4db27c0cb6c0ecdf351d
Date: Sat, 12 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647079584
