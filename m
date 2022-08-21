Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93F202F5B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661103052;
	h=To:Subject:From:Message-Id:Date;
	bh=JpW46jnX6jQgcqjQR7G1/huYVKqop5z88z1gGMio+z8=;
	b=i5ZzElp6/nfVtQAL6sDK0qpWp5wFCJtRwPBZ0F2FjYisy9IPfRvZ1aMveKWaVuXX
	/+tM18SmaNT3x/tY0plEge+ILXVQOf9Fj+yy/nucx6uY52nxCKL+bvdSKjSUkiOIsFC
	aJnLmyX/pvSSHC5YU6Kpx1nbgmJ7DsaH6uDftJOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661103052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JpW46jnX6jQgcqjQR7G1/huYVKqop5z88z1gGMio+z8=;
	b=V2cYYk912kvwqLRnTGfIhi8CKgH0DHN9ifyCeQQc3h6HPLXJXDaxUgvxqLJSaA0n
	EZ97dDB7SBpG5eDBl2wX/TOW36uE117CwI7S9mrFo32cpq17hSjtohOhPhpbGZmNxNg
	JNun2JNr/DH06uOW2iyldEBS/Ua+jlupv5szVOOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c1751725-4d8e3b6b-448b-4233-86d8-ec7bc61a6ef0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7638304dd6e366d51686dbc4c4937e36c337b57006450e5aabc42d98f0289e0
Date: Sun, 21 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661103052
