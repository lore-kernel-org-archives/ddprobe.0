Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F0029AA
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 20:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650917218;
	h=To:Subject:From:Message-Id:Date;
	bh=GTnvG5/RzWiPnUjbJpfRoSdpjzaI/G5cJnOZo5tA/5k=;
	b=jeGpDx66PzEWDz46FrZzKPespbMXsxwn+YPqzpQ1xyyI/4KVJKTdaoF1FFahpfC0
	WWt3bZBEk+omlt0Qghgz/yRHNAJytQUTOF26gXZ25JoGRzRPM45e/SJIbOafeomHaar
	IjSrM2p4+IEcdGGhicxU0ocjXKuzwv+Zutp/FrWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650917218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GTnvG5/RzWiPnUjbJpfRoSdpjzaI/G5cJnOZo5tA/5k=;
	b=ce3BFhEQuSNovizNeDc6IDmmdYx7SVkHoMYjbwHypNGXtXwfhEArQkphRFVFFD5/
	FNEdmdJ966cUYPoPnbQqbYb9DVWFgSQM8veOllt8qYEI/1Vzd+G5sfnmBdq+2QfPVoP
	2XwW4RMZ+OaPF62FA3jjbPRZ1ldgKUtvFNYfSS1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180625597f2-f90840b4-7aa5-4952-80c9-201ac2931619-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 865b5b2b0f9383b512c31d40e4a465e4d8ed9f2248f2bfad01bd26dec1c71673
Date: Mon, 25 Apr 2022 20:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650917218
