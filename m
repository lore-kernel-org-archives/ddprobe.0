Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0486C7A
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657780012;
	h=To:Subject:From:Message-Id:Date;
	bh=GpGWoNc1TRZ2ZgqI51Z26H9/GWLhkTsZlcLO9Hp32fA=;
	b=HXyGKQgEiyFbxJLIOEwiWx6Bw0qNRjOOej5V/scel//oYwZUXZ+tKgHIaEOTH/Ko
	OYw1x1RXlCasbslgRYwzGizPdhirHNRVnHc9V0YIBzuxSm5mfm2wX4Tr2N5feG5rLaC
	MiCUfZqWhkaenMaAOKi8eL+eQ9EBs/+mHjcTHnaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657780012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GpGWoNc1TRZ2ZgqI51Z26H9/GWLhkTsZlcLO9Hp32fA=;
	b=IzGcPPZxb+6cQmAdelvY6tGoLHmSZ4Ycb8nyHlZHoDsXdYm+zJWlmPVCkGjmjIw7
	DnbfOC1O+YSgZVpnlUFKB64TztmvFshhiXmbAn+2Hj77vzWPVtGOGgv6Ihj1Py3SjpD
	AfkIIE/ZvXAU70yINi3yGqiO8Xe3oZnrLpQbnNvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb638511-b7d6a4d7-8e15-46b7-bf14-838b4861c1ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61b07a48b37c0dc1ebb5db2420ff197ca60fe4d2ef231f4cb1399ea90ee44737
Date: Thu, 14 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657780012
