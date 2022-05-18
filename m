Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335621852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 05:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652851439;
	h=To:Subject:From:Message-Id:Date;
	bh=7Jtfh1mO+TSTXGcrc6WMVjK8dC5tG12ZfqLrsV93GVk=;
	b=blGBjjBejFYofKEMSr0jOtbi7vGDmpNlwRWUvsXoWKQCeoK2ED8PUx76EpgvXtU1
	d7D4EICGuKUPmbz+33JIAlhTRR5nC5twAsojNfAxm64ziCfBf6iiEpWltYpuG+/E2vv
	TWrfgROD4lhH3GV5BewYw1ubnXOi8C+mgdEWalSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652851439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Jtfh1mO+TSTXGcrc6WMVjK8dC5tG12ZfqLrsV93GVk=;
	b=XlpX9CXGVdzfNJuxm3RzUq6/ED+N8zHPYIyTLgZEHwL2niF5Ms08RgOqi8qfQoqH
	NQZWmc/2GJRKeOmQM0XH/SJ5iHMloE/js4Qbs22A0gpzxnvnDJ1tIoRqFMlxUlJM/Tu
	ueafmIXVgndF14uZtJ7ysALCJHgjuPqZQqAc9Ksc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d59f7721-4abf8367-9ad4-4c3d-8937-35ac76a6879e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49b6e598bae68e4ce114ae1207eacff8c2008847c7febfd03b116ad226e08919
Date: Wed, 18 May 2022 05:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652851439
