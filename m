Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388AC7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 17:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650043078;
	h=To:Subject:From:Message-Id:Date;
	bh=aP2yWY6QCiZjQg8LIDuVkgIHeKl/whI9rh7AdF7ZIXM=;
	b=M450HaZ3nwMuOrgIqpbWRziWfysAZRC3zQYZK4nNcut5EIW6CZwVvcviwjjWVqy0
	EQrHNTlTpXxBydLTVTitkdJYTrnk0JFr3X7B4NrJUCiVMTrZg5zu+g/UXp7O046WTjS
	tAn0+Ggug5giWNUlDjRSvs2zep9ImjfBDnKSl+o8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650043078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aP2yWY6QCiZjQg8LIDuVkgIHeKl/whI9rh7AdF7ZIXM=;
	b=BiOoYSBjS9o2Cawzx4eVN5Qw/UFv6KpWDR53GDmJgP/QNudvhpBhAuFJnhGjo64p
	U3/g34aVDz7wy0cwbLu/ffK545bNoem8cEFhm/d4Ug9yM+IQkOunj1e4n8035F3OvVD
	ZySTI/Okchu6E94c4T1cg/OpC+RYtDN0RdExcvlI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e3b46d8-52decea9-a867-4a44-b9b5-e46cb96dce08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc038786d384849e389f1dd29198606c6523f7856d552206913ef0f4efd2080d
Date: Fri, 15 Apr 2022 17:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650043078
