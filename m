Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0244FA20
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 01:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651108798;
	h=To:Subject:From:Message-Id:Date;
	bh=26kqmKs3OQ4DifuRU+ePDXb3GWnVjrihq0GP+BSaKCs=;
	b=G34piSSAqwhVQBHnocfvhFgtGBWq7jduSvI8jI1TOuVOz8k2SRgdfg7MxaPxvQ36
	kwvYC+3h6ziRP6jazbGI3mr0x1VPw7u0b3+gw5fYuxo26hf2lNdvQh20EEeR4s5klHE
	B32WjK1+zZIQdaosEqjTzhgp7UJJphdL2RuhsS2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651108798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=26kqmKs3OQ4DifuRU+ePDXb3GWnVjrihq0GP+BSaKCs=;
	b=YmEcFy92gUSCVfYmckW9s4CmzyAY552WuMjWpMgJuJ/hFwMpNePIXFDJ5wOK+OU0
	KLL+WzKx9hwX2zOWW5uI6FCbDz9lDFe9HCTC6GodEF1rMgKCso0VR2zL/hYvExZ4K3W
	RkZEG4BGgEZztWGnqUeQWdmKhevyE1zz/orhyMLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806dc0df22-2c3912d6-490d-4319-86c5-6852b4985d21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9bde7a2c9af6f4c4070ec74bf2082f888fae8711bc08e86635a98b8ef2f541c
Date: Thu, 28 Apr 2022 01:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651108798
