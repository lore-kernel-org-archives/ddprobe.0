Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040157F5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 01:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655776619;
	h=To:Subject:From:Message-Id:Date;
	bh=Nlx8RVOk44k5TVtyVcSRlMsw7QUCBdaOKmKeQ+p+Bc4=;
	b=EkuNFRKfytnBQvgrFmHjr5Nh4jSgnsxknLIOvXw7ulg/ZL+0rcihmUhqX8qWfzH0
	vsL1xTAIcWAfgrHOhJq/abk7H+ValF7Fz4c2RFd6dNcyG4yEkSDgjcxp4E+o3KPSJWm
	iAIw+jZQx8LhdaZG7/7dynhUiHInw5zySo9P1w+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655776619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nlx8RVOk44k5TVtyVcSRlMsw7QUCBdaOKmKeQ+p+Bc4=;
	b=MW7zjY4cLkqUQjb/wA88Xt0JSaPpKjpAL4pQTe9DhKW9KZHIPqNfXYYIPjHL1R05
	wSMj81bf+LLb2osF9YBXUvYgXIsT0w0MZBBC/h+bSWmj9Qq4KanCo+bq/WSVu6TrD7D
	pwWCNMX2RihGYNn/n1dmAsPCJw4P5BymxA0CCXjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183fa2b21-1b3026d9-5915-441b-843c-9cf5b2696d89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45f1f926a7a54156fe0252552dd5a2ffafae9ec3303cbbf794b81d3818d98b69
Date: Tue, 21 Jun 2022 01:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655776619
