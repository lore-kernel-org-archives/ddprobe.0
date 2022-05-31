Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E3F2562
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 23:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654041059;
	h=To:Subject:From:Message-Id:Date;
	bh=vV8HuSKLPxq1NDUdgWBQkOVpLw7QvnatlTfnmtvnhKk=;
	b=XLodxFCKK/uxhiM2DqJWqWlFRmovNxxNNJQ2q0bQJdH510yNuQCbMsulOVR/6T4/
	2rXmtmZ1z/aWYoLKSGwT0dB58ToMyNznwt1JrxvvXC2v/8PN8lD2wVf9trJkNIUBNPC
	QGeH3BY7pyNgVWD9eFHZo108Y0hZCZoWTn7Qm3Yk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654041059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vV8HuSKLPxq1NDUdgWBQkOVpLw7QvnatlTfnmtvnhKk=;
	b=avVoRT34mnpSlunoHqBXxrhOwRX7tmEASlvpcgqPtR6PbTNnIGFliLHhxBvJHRC4
	0W29sMosBR75jALLgYDRlBdq4cNuXJJs4cHjh881V4NjxbIJsclSHcYCcbwffiPnUpw
	0xwX71qKlvo5HhK3u3RznWH9Xu39oUcV988iP7oI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811c879fa3-7dee6cc8-7109-4fb3-8a56-a99a9d9adb77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 468c273567ee3d397ff7810ae158eee9d7e7c272413740c97a82c4d546608141
Date: Tue, 31 May 2022 23:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654041059
