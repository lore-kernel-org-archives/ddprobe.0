Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B121FA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 15:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648137178;
	h=To:Subject:From:Message-Id:Date;
	bh=i66ifIM63ZAmlufsDrP/QuGmizPyiewR8sTHu3VITkw=;
	b=lfdFL1AQijdf+8DCjQoWqw+U7Y5E7O2iYDYFFxb4ii2+FIkaI+S+Ck1yLdXPtzIN
	JVBULm1f5Rb+UWQ673Ln/QfZd6J/rk0AIgHjYvcqaB2bR+u1E9wacXGie1OQogACylj
	WuDbBXrML25oQ8sY6Ajy0xuPikjFfGE8wY/dBnKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648137178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i66ifIM63ZAmlufsDrP/QuGmizPyiewR8sTHu3VITkw=;
	b=EvOWAu590V/iusMiVuwp4gATvN2jqfv7A1faHQv5GnDuflr7rz3rMYQkp9M9iKSE
	TbjjBA5/E95qwIRBPoZVcIsFLs0P4g+hBx1chjIPAZ++DBa4qe+PAwB5QayaXpjDqjw
	6cDOXq0ZeNwnsWMysUvxpe/4K959N208q0jguTS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbca18cb2-eaa3a58a-2b4a-444e-802d-1636cf7e33b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d19452237e825d955f04e70486cce18c0606a091807f72d974061c5178b7a213
Date: Thu, 24 Mar 2022 15:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648137178
