Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97DE7C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646550685;
	h=To:Subject:From:Message-Id:Date;
	bh=PC+pi13Zkqu2O2IXrHligNdbhOJp3FNV3btr0S7X5wY=;
	b=VwosrSoJ9SiGiNesfrdEnAaKlrcfqlrJ/yT2IrM3RsAbeBNzX/JY5tmRrEJn9QvI
	ZwsmuVPIdTPWDou9It8kL47qj6ioQGZIrzwLbeO9p4d0EvKT6Ag42PaxGJ/tBisuK2/
	ppmRfbD+3KZ9FIVzi3KNZr4FEQtDLKP5b1hU0R30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646550685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PC+pi13Zkqu2O2IXrHligNdbhOJp3FNV3btr0S7X5wY=;
	b=VSHvCdstuUY8g59jr+CraB04wgJ4Ofk/oRSwnOfI2z6yBewknHfQho56oFjTVDw0
	PEbueIK7UFxERIOfoBsNCk2/Ambpskn+5eDCXvNE0Lje5UwRmjA3jN+I1TMCgFZepvu
	79fU5IxqJ+/YLdbVbORS0A6CRt1QLgCDVRfyOMRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e1194a5-8acd9bc1-be0c-4b48-9ee2-bec70eee19d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a325185525b359adde5189845956342b4c9397e661a92faa192e7501ed9e43b
Date: Sun, 6 Mar 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646550684
