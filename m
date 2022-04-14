Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA45417C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 11:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649936398;
	h=To:Subject:From:Message-Id:Date;
	bh=YypFjw7JKjRNtY8qPQNtcN2ot6LkLHjJvj3I2nyNrZw=;
	b=KnX7y82ezQdzKqKxM6y0UOcmpqZS5KWEjiL/qrnxo+zNnn5GGu89QBnDlj/7Ek5C
	3Uf3mvj+EcFznZnDvG0Sq6Z5BOBiwVEbv4AAfYjC2Otx/rUT/wwrVITS1KXxiXW3/+2
	UB8eOUWYAYv9xgN+efjp9kSa8X9dsACYI6kAfhsg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649936398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YypFjw7JKjRNtY8qPQNtcN2ot6LkLHjJvj3I2nyNrZw=;
	b=WKErOAP3QWyMGcEmOIBbHFKw6PpBEAhwYn1m+8MLx25Fh39IvJseE+eD2yAHWkgA
	TbZ/6V6SDXBCHh2JM7qBIII6xGk0t6tkE4QbfgAuZ3OZOrMgtzQxmQS3jxQ1ilSWjl6
	FSJEhQBVk/PtE8nHk0Vd/be7H+cSKR80Rnz5yiOw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018027df77a7-e3fe4214-4c8b-4cea-b18c-83513f220f11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fd3ac5866ba3b4fdbae4f0429bf5a957e7b0a50486dac8913ea774f590cdc8b
Date: Thu, 14 Apr 2022 11:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649936398
