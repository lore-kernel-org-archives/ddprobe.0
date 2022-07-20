Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C047475
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658352412;
	h=To:Subject:From:Message-Id:Date;
	bh=ucYSsq7oRac0e7BtB2laL5kYdUmHGbbQ0U73BgEh4uA=;
	b=N5e5e4WpeA7I1zhTl9kbtJ2vlPo8XWPig4HymDsicokICJ5889HyUPKKCuhejHFu
	evEpMJrb9kOW85v3OgLoUegSt/DJEwfmGpk/2raU/HO15q2kaXAKbcFv6dZg8bQ4oni
	HPJlj50yCuAMxYs2hbK7fuVewzd6QnlvXnpDF0IU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658352412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ucYSsq7oRac0e7BtB2laL5kYdUmHGbbQ0U73BgEh4uA=;
	b=dtuXQ8hLjGn3cja9Z5ngtaKoUmu0EXBSy0n6oEmocqlVemeKEdm78cMKm0kVeaNt
	+dr4qzW55KSv9JLa8qsUPZTzdWRGk2eVvvhWQKrHKA8cQsM/veKIjnIW0dhiAwj+s69
	GLPDk/XUpGpyxeaVlR7cj+iwFckbTrIhRdR43k0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821d81a686-9fd55b56-885b-4e64-9275-20461d49b9be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54760f26182329db2aa2613720d27f3a198d542b99a7a70e946aff67313e9aa2
Date: Wed, 20 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658352412
