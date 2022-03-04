Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8821C7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646406085;
	h=To:Subject:From:Message-Id:Date;
	bh=MY3HTutX9KUUwhx6dX6YKXxJIo1qPj9Yo6bkTJi2xrI=;
	b=YkPdTpKwIn6eJJJc6yVLV5FcxrpynSpBIdBci0EB/O7OiiruhCVbj52eh3yDTYSq
	9GWSh0TM01AlRZysfuVSB47WhUMxvG3Cu/GllPuCJkwMgzjG7BJbwynd8xCv3rbND0Z
	c7rlpxZX8JI0aOCCBXoz+XfUZkWQgqhsN9Q2rrj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646406085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MY3HTutX9KUUwhx6dX6YKXxJIo1qPj9Yo6bkTJi2xrI=;
	b=M7X3/+hEpO/MISZf0PiMSLF1NMN+2RO4jKDC/9fNX4AE/5HI7UlMhBBHKexP47iL
	gNEM9NBMA6pot24VIjXo7i5AVmWek/sKm6DhBjYAoz1GRuN3meYA7aeIux3gMXucKsL
	EzQJQUdfJzSFUBokwMslmV3WfCnpM3kzVtszBw/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5573290c-6102c15d-43a9-47c8-bc73-041d6a8dcdc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c58cd88265c0ef321c180b56a297466db91afab8fd3fb56cff512f7ae9a9cc5
Date: Fri, 4 Mar 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646406084
