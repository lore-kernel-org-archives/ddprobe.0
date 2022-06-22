Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C510EA1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 06:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655879459;
	h=To:Subject:From:Message-Id:Date;
	bh=h7969ayZ/Ehkeqpy3QFdjntBjQ5pcJlfx7KyxMXr/ig=;
	b=kOFC14mrAg8nRcfEOix91b96hiEd6HDDM/wS2KoK03K4V+AcDcUNG/qjOHofxMoj
	emO4pQQJ3H1OeLIMq3MJ+MIbohTqEHryZJBihgefolwR9yJ12oQvg0wP5pmjYJjbmOf
	kdH/YMnJzb2HXJe6GnfPssAhC7KNOwOjGLUy1+48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655879459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h7969ayZ/Ehkeqpy3QFdjntBjQ5pcJlfx7KyxMXr/ig=;
	b=b0sffITOGevFSl9y3A3Y10cLtYNpiCwKHj78l8b2GXfQ1u5Rol19sPQac2Bl72gr
	W/ShW8upwccw06xHo5B8N9JHtx5pz1h6bJW/aqGI5hRGv8zbmK/bNzOd9td61qRhdgu
	1GrwmlGlZbuwh0er3IYixWxZ3WZv5EmSRjHRkh/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818a1b61a7-23351a3f-13cd-40da-a83d-662fd2040490-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4893dfb991581eac1d594fbebbd681b95f5976e9b6e8f1d5a96f9e7ef0a7c001
Date: Wed, 22 Jun 2022 06:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655879459
