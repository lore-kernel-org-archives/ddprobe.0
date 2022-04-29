Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FED7B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 01:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651194058;
	h=To:Subject:From:Message-Id:Date;
	bh=eMvyx+lWG3uZH23e27uast0rLKHUySTB9+9B8OMpTPs=;
	b=F7R7Rq2PSY3Eh5J5hpm2NN8+OYZktHVfn2FaoFXGEbiMHtu6jIEwsKhDTjSb81P2
	viUf/Axt28XY8hmG02IKmNSLnqQkMiBbOmcCxIssL47nxzAzNNJjJWAtyOmrhu2fT79
	ItTmJImL++05F98+hEcuSqbK7l3Nyzoz4naAtVns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651194058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eMvyx+lWG3uZH23e27uast0rLKHUySTB9+9B8OMpTPs=;
	b=hxPMpEKvoAgtu/XaSBnRb84/ZX420tiHfoGJUe0YcCWGF101PJhtgdo3uL5TG+Ua
	F151/tINdP2GWDw1UT1D0wbqGLCTbSTzN3aCg3P1zw08ShnxLc+cEloLUz+fjz92sDp
	9PZbwJ1ps8/w2QSX7841M6Ssnddd3kRJaS9hxB14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018072d5d60e-da397370-725f-4a38-9d94-7fdc9f8645ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d9f39517b91d4ae6619e97d2ab29a81a8b6d27d5d10f7b3e1322b3cacb2456a
Date: Fri, 29 Apr 2022 01:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651194058
