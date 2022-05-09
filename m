Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254F73D92
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 23:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652138579;
	h=To:Subject:From:Message-Id:Date;
	bh=2WXpeWK7N99Uu8T8Ns0EV7b6I0enW0+qm1YlsVSnXkw=;
	b=UW8xBG2ivq8/eiPXaICdkZ2TlKPY2yWyTda7Z39QSBp8A4VMUDeAO9h4zN0spdBA
	nnE4eSt/WUQZO3C+1ZsSRshF+rM6AW1LCrMlMBE07ocBI7CvFEmf56Uy25dJLpt+kw4
	avHHibWuDnNHke5snNWirtTMncfBZWvJM4IcLuAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652138579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2WXpeWK7N99Uu8T8Ns0EV7b6I0enW0+qm1YlsVSnXkw=;
	b=SeIBRuwD2yCCU/RZ/tIrKDMi/4HWMCAHWOyNf3a6Xf6VYy+ozenCRlEDNtai9pJs
	Ri1q7q5m9rCZnb/qj5jz/xBh/ezu+oDcqH5rwLZyT/6Tggh0AVLt/UQgRO+Y4zHFjYm
	nwGF4ayD4AB74ivfsTbZvODIM9i+dM/RWa07UrD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ab22152d-c1743fdb-8a48-44d4-b23f-a8f9d9e1ce09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23d7e981df19f911343e4a00e14c474c4d83e0af14e1b0cd6d73a22657d7c60c
Date: Mon, 9 May 2022 23:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652138579
