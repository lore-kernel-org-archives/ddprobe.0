Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711FC2F5F
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660250452;
	h=To:Subject:From:Message-Id:Date;
	bh=OrRrCD+eYuPZPaMQigAyY3kJVJuJATemdoMuYwmYlTY=;
	b=Fmv4oPqirXnBC8rI0RDwdgl1kNKR31xdfwqnMdhRZewiBw6LLVzZ30+Tik23pABR
	XJ4O9aB42YL5OIeTa0X7Px/qvJ9MY6X9ImGdUpeMVqVh13D8yTo9vofhEwyFH3xum1Y
	HoDHahNLdtEi3tBNUFsF91kT4nFTsn2I9Y0Y/gz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660250452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OrRrCD+eYuPZPaMQigAyY3kJVJuJATemdoMuYwmYlTY=;
	b=NcaaVSGioILzVtp7mUr4tefR2r5gpUi7vJNy2yCiMe5hOjNRma7YCjOdL+njibMH
	fm0rG7ogeXCjdF0S8qfSDwOc4WPt5Khciz6tHf4v79LzfJnDyYd44oRsuiOaJ7pdXby
	glD0fQba+51nfou65rNRuh5KIA+aelEFRiUrdX/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828ea37297-58fd06fe-39aa-4a9e-93b2-3ed5c2ef521b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 383999beae59047bf8344598133be6838057c6d13f97cbd10904635c07d82d22
Date: Thu, 11 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660250452
