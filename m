Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003022566
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 21:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650920818;
	h=To:Subject:From:Message-Id:Date;
	bh=+Sn5Qv0BqV2/gmZ4UM98a4eSENEMKHFntc1v8MrdMhI=;
	b=E0//Gu6sKQgHPc7OUTIt4hHARtf/gbKq0qcosgLq9wrJ+Poy/mvzcWUImp+xXH5K
	VLkJLaMSOIW084fdf7zKodREkWlczar5w+QzfahJWdy81EXeQHn2mSWVZsHhFT/6RuW
	9rmch2AGVNLTNEAq0tcQmIlLoUfeV4Z0dUWUzrLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650920818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Sn5Qv0BqV2/gmZ4UM98a4eSENEMKHFntc1v8MrdMhI=;
	b=Oyv09C13YR6zUZtqxWURPUXudsEpZ61Zm7szIRYXUyGDLG7zvcdHN8cX4SxZBw7R
	WSX2eIhRQe7GKdfYVJirZV+LaZKLG7Ki0omlAJZ9AL1hk3JNZ4QvlLv2MpO35xPeoZx
	uk7Yb1DHd+pRYHNPEQnWkHuT9+vNi56uDBMdb2DQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180628c8671-3f29d8af-84d5-4284-8ae2-6a5b50ccc74b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ece1c9c012536a926f79155dceaa800ce864388649e304c9df8d4e76a227404
Date: Mon, 25 Apr 2022 21:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650920818
