Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188D1EA2
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657355212;
	h=To:Subject:From:Message-Id:Date;
	bh=7/YehYk9jFaRUG1wxaJX1aDVRFyLEUT/XkwcJ/f70cY=;
	b=H3/BCytSLjsaNExNbS2qtlK5FtSTqH9bh//P3Tbw18Gx8aq+tR1pnn55vE6zn4nj
	LU3gZVN9l7jn2h0Awyf4CgqIPlzcOI1PVyZEyji90pntZAO3eDyCCvKB8uY4mMM58S7
	H+ansqL0NNYIBEK9l6OcQk+2XBtGrNLMn2Pr5J5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657355212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7/YehYk9jFaRUG1wxaJX1aDVRFyLEUT/XkwcJ/f70cY=;
	b=XprF+wkZI7FUEJ8aNzXNdrWyafLIEHRZ7BxbQG6yfQX/L/1oIVnEHLn4OPp5tuD4
	siOTKbbIESULR2bZOMrFft4qG42jblNrUmkMlE6MNZ/VsfhYuFmNcUbjG2sEuglTzIH
	ry1+xTGDlOefenmfdhuvKIEfiGygSF8pPfovLdwo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2119620-33d67f32-27f9-4571-affe-a1355a24527f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f543d1a73cce31e7595117bb841070308285d62df907e109852c01a0d03292d
Date: Sat, 9 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657355212
