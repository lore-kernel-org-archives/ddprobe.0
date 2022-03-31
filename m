Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520F27C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 18:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648751878;
	h=To:Subject:From:Message-Id:Date;
	bh=XlnCeCv2jy4sVhzR5/XDZMbsHA1T1WK/PACinbmBbQU=;
	b=DFHxeLTvRjOeOc38Lpm0VmVM5QOK1Z0o9fLBVmr76FZtv3w5KIhNuvL3quDofRDd
	hSmBByUErhqk9lxG9oEt+Cbs3uayDLuiSTS9KSk/vuimYeT0RNX0O2WDHPhUpsh9oiL
	xmvIh+NUNHzid4B1UgyYaBP3WeQrSviWR+aPoQWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648751878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XlnCeCv2jy4sVhzR5/XDZMbsHA1T1WK/PACinbmBbQU=;
	b=DB5ZFLvPWxz5pvH41b/uqSJJm3YjdDuylbIXoW11IBTjUEDK/w53anALdm31KjA6
	Vk5LrDmN0++H0q+KX1Qfp3rsWWJMgFXceDM1ZmXXRk1Y6dRgwETP+5ReabwkLpbkadN
	5jS/+ppFvsIBfvr6omNXT+VaPrN6kVAJO2Wd4G/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe14520c3-6aa9615d-82b8-4bcc-9b49-9b76a7f3a79a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60e978c1188cb54918fadfbbab86aa7fd3c10f75cc1fe5c5b37630bca37d1e11
Date: Thu, 31 Mar 2022 18:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648751878
