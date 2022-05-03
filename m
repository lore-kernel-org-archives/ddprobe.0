Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB9B17E9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 07:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651564798;
	h=To:Subject:From:Message-Id:Date;
	bh=myTV04m+LmLJHpPl09mUM3XrGgR51PJgbh6ri+/yh08=;
	b=kJ/AtGw56bLx4Zbb7OFGR2Kud/im8Dv6+OSmfLnqaqL2U14kQzF6BRzMHQX7BIt3
	C3tNHjAKoAPi6O0B6AgxBKB8Jw0KUZWfL2wXp5dEQ+my6ym3YRwgA0quDCHpzskDuWA
	bg+5uwsnlYKXzmA9PCDEoJ3al6mK/eyepZdVzeS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651564798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=myTV04m+LmLJHpPl09mUM3XrGgR51PJgbh6ri+/yh08=;
	b=hbgH8klLl/cL+UYc05ZnKWAoDG7geHDoqKuL67H50Yp8JvVyq1gXTdwaziXbnIgy
	vxU3rPlEicn73u/yI38U7Buru71223U929HnLie4zlUcEWVsSP3HKrs5q4GAhxIshVm
	OF654VQ7LYHeNWmLFklDo3xw9Q3rWyxvq2cexo5o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018088eee10f-56b7dd28-87f0-4c20-b172-9beae9da4e5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c84653a564dcc37b9f9f10784612c95ddc42d6058ea66ddfb6204bab2a5ddaee
Date: Tue, 3 May 2022 07:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651564797
