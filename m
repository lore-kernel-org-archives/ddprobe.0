Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE3336E
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 05:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648617298;
	h=To:Subject:From:Message-Id:Date;
	bh=6TJjWrvtV42WDLoZ3x5LmVFlSXbPOHoqWY/hjfc+aoU=;
	b=hm32gOeupkVJndqDhprwyvYRL8+YGvbanfsk67Tqe71LXtzEugO8TYgWS5YVrbQG
	J4dbc7kW7r9BQH6f7kva5Z2eCEXqLWwUNOSWEQBAfz9nbuSix5TNfc/gVyab1teIXDR
	9KDrn1BLP73Ombm2HYGMDR1Zc5uvErxehiWjgmzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648617298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6TJjWrvtV42WDLoZ3x5LmVFlSXbPOHoqWY/hjfc+aoU=;
	b=RhbqBv5CC3rQ9MCxfMO4WFCgxkUycUUB6jLpT9NvcI7ZUyTCnS7kT/+UHO0w8jBP
	9ZpTbi0F/MOYaGU3gh83Kriyg2X1Z5MC4T5xMYLeLOFYuNcHWNszuDpGflwgZ7jrA8+
	tKc07BZC75vUvY0DVLgaYGZGHtWoii59b7VyPapQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd93f9969-08682caf-0718-4257-9e6d-622e8cf08ef4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d5e09edca972536184d869363d6d7bed4fc91a12d5e0025388d7801accb647b
Date: Wed, 30 Mar 2022 05:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648617298
