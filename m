Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DF62F2C
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 22:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652393039;
	h=To:Subject:From:Message-Id:Date;
	bh=+4nt2wvRyxMxMBre4mKZMd6V3XJmSXvyZHXi+q/h+Ds=;
	b=DK27C+EXLsHAthmIduAsU3J5ZwGiHlogyrI0rOXHDLo18ObTwcYD03nAKEZBWjZg
	RHPSsG1i1Ut7imukD208NX2K5Wb3Ax1Kt2ZzTckw/ZKjREFULTRdw5DJckizyaZvimD
	F7crOCw1Jze6wZfNBQmCg4PweozEPywngWVuuvfE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652393039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+4nt2wvRyxMxMBre4mKZMd6V3XJmSXvyZHXi+q/h+Ds=;
	b=aJiVYFe/3RfBfpRuDCCAjUh1Q7U56WkUDLwC1DRAnS5UwDjfakSMfX3I10jWWsfl
	ku2yZgcxSXg7A0VrA5gJeajpbpOCog6pvbjX4ym/fVo9vxclbS0PYQ2CpdgV7sIIczK
	9YCImmdbEQrnHqj0veQqdDPJ+sLdPTPS0Nl0geaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ba4cd615-1973a0df-7ebf-403f-9304-918c43971cd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a28aec1b086611f0746009af0e0700c5c003ecb4ca2c0cd974b7b661fb00dc15
Date: Thu, 12 May 2022 22:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652393039
