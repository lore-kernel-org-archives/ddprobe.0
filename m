Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295EA36D
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657939612;
	h=To:Subject:From:Message-Id:Date;
	bh=rw1K7KsFNZUBf1KzwFHwY2gFaEN1CoYhWPAaeesKiSo=;
	b=d+Nyr/mNAC8kPmz0PS7BZ3gLnPVKzJVT2WbDUD8Eoxw4hLnkR41aSWytwsP6Qume
	KgXfRLrVkc4Gv21df1MoH0SS8OWS/cv8pGQ/kPyBzqJDbPxWnE7YkERgTQyZBjFlxtM
	J9hz+7US52z/cjnxpC/aUKlRdARkomxJ23XrffFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657939612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rw1K7KsFNZUBf1KzwFHwY2gFaEN1CoYhWPAaeesKiSo=;
	b=UddIqesYq3G7nh6076ZzYUay/WXfL829drFgtjbudIlMW4g2Ooz8Nm0zO6pex4QX
	PX4EWPu5Xlqh18le2YCZzEBdQcLZZgrm7V6cZAlILyyKPsc+blvK7dEKvkOTHwQ0rtX
	ZbS1vZhK+Dtewfr3JwGgLH9/xSpyGB+LQybxDRNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018204e6d285-28b00bd8-0285-44a0-8bd2-f2b3bb1c3787-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8d3255e7b7b6db4831c79f65166f68de584c64fb60c3c8aa4e9cb7e7b7fef76
Date: Sat, 16 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657939612
