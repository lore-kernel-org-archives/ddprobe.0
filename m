Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622FF4696
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 02:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648176898;
	h=To:Subject:From:Message-Id:Date;
	bh=tSqXZ9bfve43Hx5uJ1+LJoYO+QVkiX+sVusZalZ9HDo=;
	b=KN/uCUORqL/lDLFP4BisVHasXr2ytNrtp8FiZXE92TYxEGJGkyguq6WTqy3MblPm
	8xxa8Jcdj6DoWvPXNyKvDa0BvEDa6Awin0cql1y/ueKNNPF5pvrZy5YGOwm9kg7fZIO
	zJAOB3OMONi7XeLdYnyIouprGvuhFGfV+yKIUImM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648176898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tSqXZ9bfve43Hx5uJ1+LJoYO+QVkiX+sVusZalZ9HDo=;
	b=PkZBK+SKyd/5OO4NT8Doq1g+8slUW0a52nhW68daxDd1yU2BuJVD5Z9fV10J1gUK
	QIXFtmDR9sIa6bPgVkgMMLWP/HJ/Tgh0xcS8XHaHJbjTGpGam3coNSlYO39JACR6z2f
	3JusFRbjvmKAJ+Z1t0aNEzwWf2vVMPGe8hqMtjoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbeffa0d6-52496fc8-56af-4311-9427-6758676c5d49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ead1ea7aea99312105136f179f9953ac861b499dbabb4b1fc02c023dbadddf43
Date: Fri, 25 Mar 2022 02:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648176898
