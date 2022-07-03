Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0ED82CA7
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 16:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656865012;
	h=To:Subject:From:Message-Id:Date;
	bh=qsI9VyM0m1M9Cj4YbyURgIyqCpOSVfWS9e7ikNSptpo=;
	b=KcGTcRtiVSxjKh575g8cqfiQqdjRmGeADS0vLY9gm20sRr5hbGnCD666Lu7ueAGe
	zOsBfqnKNK/2PS9lk1P8Fx3l0BxRZYCu9T9c3u9DYS0L8ya2wc+UqtQOUNKDIveO4Iu
	P0aCJaKXiG/Dn26IznqvXjtetuCtveTsQZ0ZrY0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656865012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qsI9VyM0m1M9Cj4YbyURgIyqCpOSVfWS9e7ikNSptpo=;
	b=FLFEu4eCIAtjOSL1h3QQYa3lxcKDFMJPAekcQem06Jkct9bA50jJqWhw19O9j0Mx
	xeSvC83kr/A3q7LAmA6dDwwYdNXarHgTbsy6p4G+jgWCycrGkwcVvX46lWtoVJCwAcx
	NVhLDzriE9pM/YBd9GvTISXwWWN+ylzNj8MaauMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4d9ba50-498e1f8b-7be0-4cfa-9b2b-9dd3d716c3a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef5750f2467303c2db65b5330adb25786e8f1a2ee12d7a3d717353965f1f2fcc
Date: Sun, 3 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656865012
