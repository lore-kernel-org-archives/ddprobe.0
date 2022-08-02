Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1227F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659439852;
	h=To:Subject:From:Message-Id:Date;
	bh=BpuIg6s9l70CrITby2flRyNJpw3ygLgZpdEIlO6uEfA=;
	b=UdPk4z07tUBYxQEAMHcPvSVvbzorLFwmjwTK9O3Qcs+5yzLOj99ZjPhf4G2oC/lA
	FQGAoNi8Rd1Fd6BS8pLPpRM7fRGRIxQRK0br980+aJWHX3XDV3vpPf0Gn7mmuB+2hIh
	DyVt1EU6kU3MXP8AjqaUIcV+U8kg/rjxjufym5yk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659439852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BpuIg6s9l70CrITby2flRyNJpw3ygLgZpdEIlO6uEfA=;
	b=HGQYPcRJCpKLXiCOMKAyBY4Cub1shpYbS+m9hAFwWqv2ZCdtYm4Uvp+NAkkprBF2
	3ycoKme4A7kVwiCfJeXfioN6bNJkgQFneA7fRVWFwhNT4plWUgdV+Snlm7D/aVHq2bO
	4RVFSBvc7mIfaoqKfkhFgxsBBl1IQTKoQ2pEAjC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e52ac34-dcd17775-15d6-467e-a773-31f293236f27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 691beb8d23495c9cd6928202b2cf76a74f88d68d4e8086221935bdf54018ad84
Date: Tue, 2 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659439852
