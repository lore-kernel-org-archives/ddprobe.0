Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C89A20
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 23:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649546998;
	h=To:Subject:From:Message-Id:Date;
	bh=E1kVFEKeRpCYvVb/S8HDyQuzS8Y35fD8ADZuY0eFAL0=;
	b=ObQk0C2vCwzNQuz28dj2Ih5KmhBQJNeWE1KULWVZWEFb5s9bGxYJg0EkIySf9/WE
	sgt/rOmBTyp+APWtCUv0eDVIv47iNcirMsg3hrM3zqidi24OgAbl2waZATP0D6kOUnP
	pzyxzQqULOzVUCFtqeq1sfeL0oDlf1014NUJpBfI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649546998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E1kVFEKeRpCYvVb/S8HDyQuzS8Y35fD8ADZuY0eFAL0=;
	b=LjRPGgvluM2vVamR8Bk8pqguNLDubulDwvh5HgrUxd6UvF+UC7FIlvJAWyjnaUDW
	IxIqRpd0VYr4Vwse9TQkA2utdF3BkA0Mc1D1DpGChced03MVIGh725yEUiczO1Vain4
	jk7AvWFbaJa3qmHp3IUdy0A9ug5r71eQmoaPmNwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018010a9b217-58b38fba-0a80-4c0a-8fbd-2e63399f5276-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98515ff4052655811341e905588ce5195234fccb133ef3c4002f120d6b90819f
Date: Sat, 9 Apr 2022 23:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649546998
