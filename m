Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993A37A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647660384;
	h=To:Subject:From:Message-Id:Date;
	bh=Uc+hjmTJqArm68FGY3XmAxVU4UPZ63IXq1rlE5HhiHM=;
	b=ULbGlYGkZROznpgee6WZ6EwHY9VuJfcPWu+2J9HnfUTDnGKZCy+deQKM3DUdAkly
	XLBNSKMCfKbq2XI0WofnrwAZWEKh3apb8qw45JG9WGnOm1QGRvRQOlK9aAHsMf/vN2t
	PU5G6lSGULugEJnoHedeT9b5ySdMgDzkqbK0G4wQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647660384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uc+hjmTJqArm68FGY3XmAxVU4UPZ63IXq1rlE5HhiHM=;
	b=FOnsrhhuBOOoDG6UX5cSujciYNZn1l2FxvlsHH5OZmjFrOu2wJwuxV57xmBNwspr
	fwhWg7n6OHGQ/nYQ3ViQ4WafIZwzM98dZEl+lMMLuGD1vv/fSYmL4V/wEmV2vz5BKSJ
	3DL4Oz4U64fO794+LGTLgpSHJZwYz8yHDHbnFqqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0364229-3ec3f639-30f1-4e06-a705-0400491baca7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccad8d45983a7b2ca864fc9ce703df4c377279c4607ce34b218fc6daea816b8e
Date: Sat, 19 Mar 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647660384
