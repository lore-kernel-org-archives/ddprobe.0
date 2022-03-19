Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83DD44C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647675984;
	h=To:Subject:From:Message-Id:Date;
	bh=bkeHsr7oOdf9GxXvdmBHVrdn9JmTiLbPKznFNDtonY8=;
	b=J7YbYlS2LLQPrmBmSsPQlBatM7jDXNGy2yh5adFXcFNUtmxUmYiMlJHgg+YF2vW7
	XelRadyki1xB3CS8hs8ng+0BsZeqjgtbl7o3rP9Fu0wKWfLIhe60sHZ89bmuxSRoHZ5
	xAzXYPMgeTJ3q880u645ywrejOmf6IW6K9v0STFg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647675984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bkeHsr7oOdf9GxXvdmBHVrdn9JmTiLbPKznFNDtonY8=;
	b=AiPtVobhU8f3CjBqtOP686qCHu/RT2G4yjVg2O2zKeaK3tQuEJRmrrmBOzCEV/mE
	ZxEOA2Jza1AXPnizZ6f9DpPuMBCEHN2U1x6q4VYTgrs29VbMtH5iGV0bdIufvbvvjkP
	8UakwnwaCDmqydASIW7puIpmWUodMCppx9YWwsOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1244b7f-a36fa964-5195-475b-a8d1-4f61c4c5499e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d83601e7a12c0ec77cf4c5da6151165aa3c3d95a5f87921151316d412a8908f3
Date: Sat, 19 Mar 2022 07:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647675984
