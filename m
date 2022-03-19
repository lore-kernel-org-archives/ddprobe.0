Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792F04C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647675084;
	h=To:Subject:From:Message-Id:Date;
	bh=Z61xfL1yWpA2fBjaUs87dlYYPyFbaym4Bj81vUz+p8g=;
	b=OMARck/p2jieLWSwdiUg91047eugJp1v22V4ctqfuW1l8EVnMfZ4Aou8zG6vzKp8
	Luoj5uBhVpmi29YKFhuvIcAl08sGmeYm2Ak/bazQcgvOlGBoTNxQyuiUTeSY161A5l+
	i9d19ivJ8IwDnOD+IDXs814zHH1bYgF+ZcYolNsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647675084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z61xfL1yWpA2fBjaUs87dlYYPyFbaym4Bj81vUz+p8g=;
	b=A2xI/HjUyJ8W6kMxfgauFvcHK3Kvv1DLYO2wcACAutPfrfkuW8/BTiFMwO0vrMep
	pSXrVXVpW/xit7P9rYF7ruqcz767AL1Dj+QhHU2oSf1xBDHuO+YXAqA5mp7sDY3b8kG
	DpBMc1ZNVSI7bpy7Cy+FGsmujTP+xGd7EFS2Nf+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1168fe9-0ac0f8cc-b19e-4435-a6a1-41df0b90185d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc37c42f9917e7fa61e0b91fe4475c3814dca596853f40c4c0b209fa56601a80
Date: Sat, 19 Mar 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647675084
