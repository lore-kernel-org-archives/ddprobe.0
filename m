Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3C3B1363
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 09:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649670058;
	h=To:Subject:From:Message-Id:Date;
	bh=+KTmpISuBtwdoA3q0XDBFkm/gwLtAYubaW/vca6QRpI=;
	b=JkgWmwzOqRNDQCXHvsPAW7+uakhSsAaQ1uc1meX5A3Yqz8tuq8AyQsPHGw9bLu0P
	b1QFR9v9XOGghEDk+n7Ji+nungY7PQd0oEBD6WleEIQ/2vAxz51EeUQfC7BTh1mkPdT
	OPb8QQOKbDrelv4QqGCz+bIjWIcTN2GzQSTSgAXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649670058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+KTmpISuBtwdoA3q0XDBFkm/gwLtAYubaW/vca6QRpI=;
	b=PQKjMPqnKl/1h5gYKIsZxSsrhoNnvsPJoOx6we2RzctTTr4EBLqVxhV6uL727Pi4
	d3ML2xbJccgL2XQ6VyteDgBvnSeIOsEG4SWb7otmnnOKMt4/WWvhHi/92yUFKvW6kqE
	2DAJYlgHO0Vm13dH+FH9iUAY4bmWM1pqLr9Xl5nM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018017ff7142-464e699a-f151-4640-8900-70af011371da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 248bb0feaf2132a8012eb6a54240b6cacefa99d7b65ef15b671368957e02aecd
Date: Mon, 11 Apr 2022 09:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649670058
