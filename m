Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EAC15A3
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 02:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651459018;
	h=To:Subject:From:Message-Id:Date;
	bh=wICLYhyTFNePaBD06UmNtyTqIJJLINOX96RGXvvGoN0=;
	b=GpwFkE90+WQIb7CWFijlPczU9JOsIb+Jm4yRnNAGSSBU/NLZT1PJt1iFeEKqEAVz
	Wgt0imJq8oegnE/PdYYOrK8p7eW5yc05336Z2ACCaqgGrEE0YsxvsvwgAO4nq2FCYB0
	CK6wDjhTtQ9ERA+UaqOdYcrYcQ5QGgEbd6sifZDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651459018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wICLYhyTFNePaBD06UmNtyTqIJJLINOX96RGXvvGoN0=;
	b=EzRLhDHRILqsavbl33AsDjwdbWAkYcbNRGCC3IrlPR0Xy7V4Aoz8x0WB0dtCPI9/
	jrS8ig3wNhpLyRNEnXC1JbZVZXswrCo2U4/prRKJ4EW+SigJ5VLh4fZ/tgpW+yYcXNN
	o9Z4tyhL/aZ+Zh0CMR3RP0PkUNRPvfk0jCwhzukk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018082a0cdfa-20e7cf27-249a-4c53-a81c-6077f7f9bfb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02cbfd9d281ae0eaf86f66ce544c9fb222f2d015e58994323bc5aa5afc25f7b2
Date: Mon, 2 May 2022 02:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651459018
