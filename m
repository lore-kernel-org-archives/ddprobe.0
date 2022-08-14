Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBB3A4E
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660461052;
	h=To:Subject:From:Message-Id:Date;
	bh=zlA5B2DCKCxcFdk4XlT3qttakt57s4JHF3bJwbuV/wQ=;
	b=NDv8MiMR6UTpTf6URvDQY+axvq5P/OmRvU+jt+9fKmJNH6dMhGKSV9ve3FLgShAp
	Cmx6a4XIXqY9yQiN9y0WzlTm2tTU60jxZaFLVI1wbj/Q9Wivn2cgEhnlGJUM6ijtRcq
	OI9p68054ntTsjnxWlO33m/zwvo97m7dxMPYlfn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660461052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zlA5B2DCKCxcFdk4XlT3qttakt57s4JHF3bJwbuV/wQ=;
	b=Ioiy8CnoPUS/ECwdTJ+sdRzDh1jgyBE2uyqPVasJqUnoppaLozzpGv5+qtsuskKf
	46rIjOXrEzVhvtKi09mEBeLqjACmgh3+TE3FjGpxwqCEq3l7r4w7FDiA10tVF5jAVBs
	3t3Ol0pk0yvcvzkU9pxd/ffAgGKWiW1OgeiiRwg0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b30f2b3-3d41661c-d39e-4715-b49f-61310b9486e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 428f0238d27fc47e58c19454585d18091a1a5ae4d38d7ec06c3f87a87abe797b
Date: Sun, 14 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660461052
