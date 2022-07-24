Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313FF3D7F
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658687812;
	h=To:Subject:From:Message-Id:Date;
	bh=OKu2c9k8Xr4PMH5RSb26aFcWDywGo88HgCEaQBXzbEQ=;
	b=Jga3ol9zRlm3Rv3Y5tWHgFzf5fHnCHrOF+XuPJMmW9Ul/Ing1DqCgYU8UbsiCXHL
	ZgAxTgy/QwfzMy+jw2QAksK5U1lpIippHZ3bZafTigNoVy9P8AtZ47WAJb/s4rMfn+8
	5Htc9PyffTCRbD9p1vwgrIu12/rS1QhFbQJ5qUkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658687812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OKu2c9k8Xr4PMH5RSb26aFcWDywGo88HgCEaQBXzbEQ=;
	b=hPnzoZRM30PY654sZ7Rz2lX19IhXGRAWIShNTgbRhMFYR6WuCGkhYUkT0myshRrp
	7+x9z4iWXtSIeWCbfx4b/+rVBSBl1q5NYyjs+MddLV8mC01tQW6Rj2bx9nqjzWiQ84+
	BVGLMIQMeWS379L6aSeO5w64kVshOe6NfnZF08MI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182317f72ab-3797160e-1152-4eeb-9803-7c3660b44a3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 542cedf3cb07c23591d92ecdaeb68bd41c8f1890ebcee12d7f5db5a37dd48137
Date: Sun, 24 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658687812
