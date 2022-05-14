Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065152596
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 19:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652555219;
	h=To:Subject:From:Message-Id:Date;
	bh=ssNUscqveCFfxcInodnohaqgcKyM9KBUU2U8DUsLghA=;
	b=VYQskBd5svDKUfnaqYkXXP2kZDYZDMnlhZX4ohfyqk8s+ybprjG/aw0YmCekOZqD
	bp+y6lIvYYjpexoeUenionGt6xfF71SFlTxIYwqH12c0kD789lmrAUHJVY+Uw7KWxxP
	nXehZSSn5gPYv2TI0fwxz1PS1vdnqVxd2TZmZIZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652555219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ssNUscqveCFfxcInodnohaqgcKyM9KBUU2U8DUsLghA=;
	b=kosnNtgJhGx15gxE5fon5S1QDSaPjxBvn7NHVkiO7yWfuWn/+89JHCuV1Nz9ZH/L
	uv9fiG8gDOTuOffHwkETd9rfQDVCHz53GIhN7Tw1wYFE/uddP81Hx4Kr/ii/QVZk3cX
	u5rgpDNI1yW34cSfZnTtoqC7ewxGdq/ifG18yEcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c3f7817b-201264e8-b909-4ed5-99f8-4335f71c6496-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1937ba36fcbd3c448ac7048e5ed0238c38dc111c448c159d113155432fdb7fb
Date: Sat, 14 May 2022 19:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652555219
