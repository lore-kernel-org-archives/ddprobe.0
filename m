Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0408A19B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 08:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654764119;
	h=To:Subject:From:Message-Id:Date;
	bh=t2igYQ3kTMLq9aPdi2E6l4iFl1kD6LbY0vHgNHP6RHs=;
	b=iPYelmeP4WQFXyylwvmgLiFreMbdegr66s9n4RpZcqyi4XqsaSl7c3CooV1bV9e6
	S8FoAHxkY5KSqxhf4pUnHn0RNlLyOwQ9sxpONiau8SUSo6W/Eni4R8gDxozOCM2ahUW
	DZ7CbWpJ725l8DskBza5jNRlzryGKm91TCujnNoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654764119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t2igYQ3kTMLq9aPdi2E6l4iFl1kD6LbY0vHgNHP6RHs=;
	b=hP0O/qcsyXEppGjZshV5y/B8LVqUVDfDaYITXyfTh1p9X9o4wVrX8EVJZGGmOImI
	c8WAM9oRASp9MfPPI87EPzqmFEJECK4J4Rl6kw0ldX3Xp1Xsazpr8nywiAO9oWhgRmF
	NDF6cDSn9q0UsXkSb6LfkIymPugJp9nSU/mF1phY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147a0a49f-286fc9ac-bae6-49bf-ab0b-7f9fa35c20fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ddd11e9b8e0cd8bc583dab36fba0b4f5b0a2b180bd07cdd7206aae2adc6da13
Date: Thu, 9 Jun 2022 08:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654764119
