Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F257B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 20:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651263298;
	h=To:Subject:From:Message-Id:Date;
	bh=oR0mRO+a7mJPBAUxdrzi+ii8r1NF00qOzkx+fcI72so=;
	b=CcK6YfF8wuPOBjElkCs9symahV0Vh+d5d/e7iRes+Ggu1VXTi2kIxOerSdLwDE1C
	QRe0WdEbVnK9CoU5LSE8XQvhxtBjYm1IvhQngTx2VuCf7IWEzY/fPwlzH2W9eCjAJjG
	Sop4riMZ4/dgqYIDT9TCHwRPhaTgOQFCh74KpgyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651263298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oR0mRO+a7mJPBAUxdrzi+ii8r1NF00qOzkx+fcI72so=;
	b=VaSBnc4vq0BRPC7fy8yATml7Rw/Gid5Bxdmx0nDd85Kfm72l3SuF3hbdem5iYDiY
	iELo9OcTiaXTlfB50DsC1+ASdPFJNnN4ZEutNm9322Npvr/GyQdtjlxNff9w0owSzEX
	IhC5IomuWnea3b08c1g0fHlHKdVnxrnCEaEVYNcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018076f65b04-a421afb9-30b6-4544-9872-e057a513ef8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96cd6c9c57d17cfea414bc5d6fb7e046828867e56ace702760b97ca6a7e21f88
Date: Fri, 29 Apr 2022 20:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651263298
