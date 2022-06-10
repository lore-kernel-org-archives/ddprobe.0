Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FACE636
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 12:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654862999;
	h=To:Subject:From:Message-Id:Date;
	bh=Q9TLoqpKEha2ZFEBXlUGATmMpCjTXKdGFYJvk6hF1b4=;
	b=gmoH+nhz+S3Xg5Lx/f5d7FfSwTTHJO9xlgW8U10U1PTRtR28sOLmnwedmiaaxeaM
	uHLBRZQrw3EUFeNEURI2V2MfjVu/TV3TZsnGMccTDeH0CN11KqMTJH5BwPVw3BQQ9Qq
	vgDqZD2no2609Uw4jb8MJ/lU+VY56MrrAyLSD8G8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654862999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q9TLoqpKEha2ZFEBXlUGATmMpCjTXKdGFYJvk6hF1b4=;
	b=bSlWzozGS8mfpYf1k/AeCDWaR3sJvyny25sa7t0Vx2XOqHi+HS9vw0ESzkhvbzcP
	diIeaDIghByd+Tb6ZaworvCaQl/ezlN6MbyDhOAY1DeuxbTzjThCEtzCkkYQGQkbHBH
	j+TcG1HxaoZy+xH6uJoa6LfFxES62DNFJSSA37Uw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d856ed5-5c8a1662-e226-4835-8009-929a4bbbc60d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cc46f2b8d6655f1863eb3360f345ccb2cb8abfcc1163bd32e18c9d5005fd8d0
Date: Fri, 10 Jun 2022 12:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654862999
