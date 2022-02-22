Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685D62F4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645565785;
	h=To:Subject:From:Message-Id:Date;
	bh=PbSwwSAwDg72LBySqGH3aHHrhbkpkPYSDAV+LXMKu34=;
	b=gCLPkCv3zsHN7sF1CqFJgFOvQu2AIkdeVuhjZtgPEOTGP/AK956U0T4/HN1rZ7+/
	WYa82y1xlhmT6UAoB0Ros9DFanQwptif0GwSSVfDdFSysgM9dn74F+os50x5pN6LypJ
	opijrll+1m01NAEtHvTuM8S1CI8D4JSEYvwYEj8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645565785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PbSwwSAwDg72LBySqGH3aHHrhbkpkPYSDAV+LXMKu34=;
	b=cTkXsxzoS8+YTMJfl7Zcoaz6jEUMf+YIRKDasLj+Z2IbGs9ccmEqGb3kM1yScDtF
	fMCjjMFS2oIeMG1zIaAmOm7WHD9Q6S2bMtgqMc0iyqyq/qrf85JVnSsZTEDiKejzcft
	cDqXjc0t8/8vxHUSmGLzkRJ3esmAGiayR1ck/j5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f235d3331-368834df-2408-4851-a5f8-57b1c0116b8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04ad44c0155475eeca00087e990790bafcaf240209c0d55ba7b13e028349b622
Date: Tue, 22 Feb 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645565784
