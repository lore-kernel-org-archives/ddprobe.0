Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6B21865
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 17:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649698258;
	h=To:Subject:From:Message-Id:Date;
	bh=OxqvlEasXCiU+Y6tDrvhoSZFon3lFj9Z6csREhZs7Ko=;
	b=JirCkDVG/mrugxVry5NPzQQsLCiY8iS/66uJ3+gBnPDzEXi+tNdR7LZvB8Dngtq3
	/4YbSeiRiwce8n59y9GUzTdA8FPToLT2cpKBywoa9wejoqgg8LDsw7h8EES6XYVhuh/
	tcbPPpc9mLMyzFbErUhXZYy/Ti8oGni19pYsWnkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649698258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OxqvlEasXCiU+Y6tDrvhoSZFon3lFj9Z6csREhZs7Ko=;
	b=eFDZcQUNyTrkxUWUnTSOfUcouIzSz+pOCpFXSaTHjzXIhMo6VIQm6i4JQwHwfiM2
	YJdK8JEVN5p2TUlB3arIi8K8kx+w7rz/UX4KK45Uyl0pZITTsTz7t2547GT9+EdoLOw
	avsI/Y83xPNVa8KBnzHW7MdKmDhQPszoc636Nhfg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018019adbd80-5e04b144-dcff-4481-8e6f-39951d77fc42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5fbad89da30f6eb9e345a957b149998266268895f56090b174042df06a9b303
Date: Mon, 11 Apr 2022 17:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649698258
