Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97616136
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646256085;
	h=To:Subject:From:Message-Id:Date;
	bh=1Pvu/hpJbLIiUxobqseTA7BUF96ziWMNZOEpEoyPQsI=;
	b=jnia4aUwpJP6IFAswlUaRhdWm4owJQbcyqyzxpvUjetRFB8veh793MZyt2K69QzT
	42vJfzkoJworwSKsR7Rvet43k2XvvYGQDWRr6rG8ZxxpZlHRQyfvcTsJV0ToFY8NPU8
	/23kpf5J9fz1+UjluwVXtMie1TQZLQZQKyIyv4/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646256085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Pvu/hpJbLIiUxobqseTA7BUF96ziWMNZOEpEoyPQsI=;
	b=KMUFWR+yFJMuKImGkE1Fyj+nKEo5yfBd1mGj/07QuJNyYCVgQMZIRIP368KGvsp9
	660/CZpmoBzv5EpUkpQZToGX8dJmW2t4n7Z3PAAeOd2Oez7HbwbdaFqYu54PQddFXbz
	zvQN0OQGEQV9r6Ugtd4BuCDWel+K72gLL75oeuNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c82577e-a33e119f-0653-4daa-8172-6e6be84284a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c26165502e878b0d8cc41cf096861b8ea79884ec3ee4481c8d902a0bceacf9d0
Date: Wed, 2 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646256084
