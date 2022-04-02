Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACEB21856
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 13:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648904699;
	h=To:Subject:From:Message-Id:Date;
	bh=e97fzKu6I5pzTIH++NT0uouH4gh4Q6wTjzNlIU61Pqs=;
	b=ZmZ4Y9heAxl59vnphrosuVUD4GcI3iNCP4i1VpZX/eRHwhFx6UCYGy0czsag2itC
	TQiXYxBa+m5cTi2iWj+7B/cL2L8gJti/xQW5kg0tUgbndak4MAi41GTHlHlNd+JB88l
	h4SOGwxyYJZJ3fmLK+yuF+4tUWKMiBng7g6yBoF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648904699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e97fzKu6I5pzTIH++NT0uouH4gh4Q6wTjzNlIU61Pqs=;
	b=adAvV/YzOirXV2QHi2aY/ZpVXQLcgTObybAZnCn2Th6wnget2q5g7jOnmY0mD7aU
	f+9HqE4SZWdhYZsvuzTf9zEjpCOvxILkGmy300CAiOvHDq3sk7bWfyLuUYTF2w9BGIx
	sHktEwiD7yT2GKwwdyKRNkq8ib7H5h8aeHM+F654=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fea60f998-de384780-a414-4c7f-b57f-48e70421c92d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33241168a105f63f258e3ef537d95ab04a964e42bce08b82bb17d466b610b6b6
Date: Sat, 2 Apr 2022 13:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648904698
