Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5C5EC2
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656639412;
	h=To:Subject:From:Message-Id:Date;
	bh=URo5diX/mOA7O9FY3Z4gZIQlfF55tmMNVJLWgio5FOk=;
	b=XZuNDeUW/f6N9Q14hsFONMZ9QunptJ2QGgpvo+4SA+WQJhvG6FG62npluiBUT+g/
	sUGKdJ5SdEkAeASe6qnaqiBK+xyn6JW4uMUmR/a7XbqHrPUJIziO44hV7JhF/yBGTCP
	65Jj5k8e2EASa3+Ky/oV5huxlCN3k1y7Lf8pY3UA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656639412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=URo5diX/mOA7O9FY3Z4gZIQlfF55tmMNVJLWgio5FOk=;
	b=TWywNYdLhizgD+S1xewUiw1rggnAbDmwOXFXB/D8ZvCZG+j95M9UeFvdtlBQ/3Xm
	X7ispvT5BAtKj4Fe5XAv9/Xx7frkPRiTVmTix6q4TdCJsEO3j+PGYvnt0BaJEF8qiZE
	/lUndG1VVnb7uddUR2aqiwOuhJQj9wJTjck2soh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b767583e-fadc5967-1c9d-4012-a726-4a853e9a4c6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 484063755dca96208063704f9d6d3c2b9ae0ccc9a6df80a7d89f935a60c294d7
Date: Fri, 1 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656639412
