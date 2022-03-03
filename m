Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF3736B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646332885;
	h=To:Subject:From:Message-Id:Date;
	bh=qwz+o5iqOPX4lH2GvPeBQLEef48NqCgo/A+cyKrQC1A=;
	b=mp46MPBiSAnlAYd0dDPUXCmPmTY+VxqVKp9vSy6SxhEVgZzEFsfbTQNbYyqLPvB7
	Q+7yAGnVXkYqTBTR5BdPhgrrFV7I/SEhu50AyMBjvW7NIDD2+RAAbUm0ejzIm/wIF+y
	pC1i8agKcVTi4KT2IOaN4zrxoPUxK5IIggrmOuOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646332885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qwz+o5iqOPX4lH2GvPeBQLEef48NqCgo/A+cyKrQC1A=;
	b=CXsm/+iB6jHMsyaGaCGZI5UVTs6Jqw24VmldM8HrpMverJRUNJ3jkJIL0VCRdvw+
	axQlfKRncBQRHO4WRr3KrfCfN1iQgE0XfQ0bFIafKeVbmUVUWHaGOgX7FtJKl4QmjJq
	8mG2dya0QRUbOLPdPZqEsaYk2bLkHj5teRKleZGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f51163772-4c00719a-0100-4df4-a2ce-3672c9a7d245-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0df23df33f663ab2da97ab0ac18b81046334fa6d09ff412c608489b136f87d5
Date: Thu, 3 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646332884
