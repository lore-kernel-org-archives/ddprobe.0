Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5952F5E
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 17:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649179198;
	h=To:Subject:From:Message-Id:Date;
	bh=855qQkrYHFh4IxJhIbS2QK06LE5+45Xst3ZqmuIo+Vo=;
	b=GSbdd7yC/ISEHjie515P6DOViMDRRRiT4e8FafwNd1EiF9JyeaGSETWvIaShKFMg
	k/vxMnfV7i5boFRYCbT+ZJQ2RhFzrIWAvsDsvJCF50LcD3YbPRqVa7DtzPXnhFP4KiQ
	oXVXKP+5J/5wHs6wQiwVDvpuyEV/zdmGlSfKiCjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649179198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=855qQkrYHFh4IxJhIbS2QK06LE5+45Xst3ZqmuIo+Vo=;
	b=ZIo1MpE9UHi97lm/OJcqZFwhdwaNKEBYOB7OdwV+Pz1fV2WPAR6NK7ODY/I45fE5
	eXg/yZZdPYO5OOy/POibgPMfMCGVsaYQt6PEVqklagwMo5B1MazVZ0OM0Lz6lN1ynR8
	siIiFtsuHtHcurUz9W9r+r/vl+MkdmguSz+Z/m6k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffabd8344-ff3766df-735f-4e36-a844-c735b340725a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09b2ad54eb46de0e36624e020c9e3138f2a6898d995f83cdacdadd1cebeda0ab
Date: Tue, 5 Apr 2022 17:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649179198
