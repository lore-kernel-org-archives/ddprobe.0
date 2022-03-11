Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DD77E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646989585;
	h=To:Subject:From:Message-Id:Date;
	bh=6PL/2rqtA3AyE58hT/tBXaj+sj1sjeiVU+IXuR8qob0=;
	b=WCiSrYbjWpnyYfZI2OvoyJnLbz6qMfCaGE3y95aIbnZ5T+xKEf0ALwFrHnI+oP2e
	bggVf8f2/HepXqtHoJW6dlaPFpKGv+J5SqnbW6rMG5W6+WRdSqEGIEmcEQAzw1fXbNm
	yioqurbupMksP5zWRiC0x8NRjk30TjoNP5F9KkfM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646989585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6PL/2rqtA3AyE58hT/tBXaj+sj1sjeiVU+IXuR8qob0=;
	b=XokJ2/Qz//nUMtdWvMwfqyY/MURy/PLuR/6hjWu6kLUwgnSElezSNYNR8ovdA+NF
	Gv3giIJna6PxrlAGyoaCMBmmc/vEVNc942zcMojB/UDmSfPQKgOBN9h9AJQ5wduJIHy
	pMfwjmE6vBXOza1BtyNxrkDtxpaU/cVlHKJbuHTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f783aa95e-fdadc84e-7c3a-478d-9f93-784af57b03b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9a2b705a83997d3201bf90ff329d62c050b121351e56b23f435b80ddee1db3e
Date: Fri, 11 Mar 2022 09:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646989584
