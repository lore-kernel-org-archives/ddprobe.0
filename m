Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFE27B
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 01:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651281898;
	h=To:Subject:From:Message-Id:Date;
	bh=ypgrm7Fzwr+YKcnNcHBPJFZRITZAfCPypYOruQl1ntw=;
	b=dfk8cuCmFFV36Brd2ZuwUQt11VlVxz0QFVcPh0976xVbMXVbcf1iAQXJAY80LnEq
	Vx+/Y3gfOmcyzXWMJQebKvwAxuZd+BA6RcDOV2GEc/pDpKOwqeNI5mC5wBlkOsRc+pE
	odgKfrT6FTsC995MziWCsmVW4ehk4ORpHNFTtwko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651281898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ypgrm7Fzwr+YKcnNcHBPJFZRITZAfCPypYOruQl1ntw=;
	b=HK9U13Z2ZUakNcnIjI6XOmGZaOvDTMBj/msOBiTjFnRhAS136NSFbivP7WcS0xXI
	P+1UEcoFPw5XSjjIB8Fl9I/Aesa8U70BQTyV3AQQtfRhUNaOlA2FAP/H8GgJyfAV57b
	BkhfVmPxueXA+IiMhjdkj82xOaF25niYpYtoRZls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018078122b1a-c3024b8e-c664-4c87-abec-aa3763bed321-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de9616f93544e09c26a38605e18b1f44a8cb5fba8db2c9815836cbce828ad861
Date: Sat, 30 Apr 2022 01:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651281898
