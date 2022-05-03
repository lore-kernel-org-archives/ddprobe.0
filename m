Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B8933F6
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 22:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651618378;
	h=To:Subject:From:Message-Id:Date;
	bh=1kwlVj2SLNtgel0yrgJTZMqOby+TGvWickWAqRoKxdM=;
	b=IVd+ycr62njmK4Y2BnwzpccgaxJF4UkAfpGU2/HS5C2X8sWWxLndjh6QX+DPOkcF
	wpbKFCmDPwZ2y8epZZP7GKTf2nbnXwYoEOLLd6XIzODjNUnsMKvR3Sduz4lZdpaJmV1
	lMqvX3bWGJpACFrTsZn/QrK2joz81OvPmi48Veas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651618378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1kwlVj2SLNtgel0yrgJTZMqOby+TGvWickWAqRoKxdM=;
	b=bkDje/rGIxkfKQM2zJA0Itq05to2+fx7lGdkXzW2N0jQBkTzCFaclKUa2rv3dJ5h
	8agxTUBxrGYXOLHHtxI3H5WGsQvbXBXpJdZD/5mGNH5rTOr5tHHDqEB23DXCV8d3wVP
	uyq+QfcMfMQ1AoSOfDbpoc44thuXnpEHSX3EilWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808c207208-af4cc790-3eab-424d-9e71-6b65325c189d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80394b9d2c0b7ebbaff8d5860fdead27c83b190ce6f2de6c3b0c0fec6a0b97ad
Date: Tue, 3 May 2022 22:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651618378
