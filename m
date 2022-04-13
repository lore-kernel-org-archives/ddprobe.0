Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1926C23BD
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 03:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649822338;
	h=To:Subject:From:Message-Id:Date;
	bh=XNE3lSJXWAZqZ/oPuMpLfL6BTGFUpH8DaTsBerU+FXc=;
	b=HkX5NkE8LApSRrk8veK1iZ5wuwgL4FF/ZPC1M9WYdaeIeLC24GkqK6opR0thmExB
	5ibFoeMEX8sBRDVCGdJXLd3tjnPscqWv2ipFXFbkR7BEuM2YGSjoVBitWw5UnIQkf70
	qEOzTu7AuLxyPe8WSE25zqltBLpL/W9r5aJw5hV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649822338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XNE3lSJXWAZqZ/oPuMpLfL6BTGFUpH8DaTsBerU+FXc=;
	b=AG8SeZaF4qZe50MZGHtto4qVVGF/jrGFrjUvhEX5oC7W1TYlJyGlvybsXgFbTCaG
	4cuj6zmJb3tIwyYNlYbwEvGtCPpzuBLEkm3YhtiBxLkqD/gGC2OVrS56pJZ2fgc4ain
	ZLNvekkqBvk6cEaEBoZUc2pqhj26KDhmg9lK29eI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018021130ce0-39add518-f78c-4daf-baba-573e317d9005-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e98c088a07f5a5094f7570d0b570def1f10e405e197a593442ca6b5d084ee586
Date: Wed, 13 Apr 2022 03:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649822338
