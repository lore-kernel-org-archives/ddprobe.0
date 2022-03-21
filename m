Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3017A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647842485;
	h=To:Subject:From:Message-Id:Date;
	bh=jPUAK70aF4ZMAAp/s1x+KD3d0iI874I3/e+9Zc23utg=;
	b=VcVJWvuaEXqyBBJS08kTthtTD1/Hy8OqyVzbfnII7cOmjUzEPdUwk9GYVQaViSlP
	OUJ09+6m/4cl3XSQTU9hPspIRJB4yLZhZ3DHXEukIjm97cBDGNQIXnHVDGU0JFsx/ru
	8M30SBkxtVncv4RegFtn2ZdmjcO2H0Z/1mCBHagw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647842485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jPUAK70aF4ZMAAp/s1x+KD3d0iI874I3/e+9Zc23utg=;
	b=cLFFZfJOERrLlV4c+DHnKGMUXQEWhlJf/kG6LZApG0QtAhpiTqhkupuyDwMIY8s+
	qGeePMyPLCLOVxaLkl4ThwV9C/il4qJGF1ePX3OWGI4OhMF8yNmUnYclk76HaxqiYZI
	dOm3QsnTjlVimS0omTeZ4CWSMgetQFp4sGBn+bZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab10e1fd-bc03eb73-a6ce-465f-a644-84d67c0fb589-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfb441d6a9435400b70f882f783e38136ccab504b81c70ee90f6689ecfb3fd61
Date: Mon, 21 Mar 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647842484
