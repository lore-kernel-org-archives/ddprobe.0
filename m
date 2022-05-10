Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E76A23B7
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 06:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652163539;
	h=To:Subject:From:Message-Id:Date;
	bh=eWFnP6Erc4MZNprZwRn5v48sSuZ2FlucUqxHLkJ0sFo=;
	b=DJSVAUDI9Ja1HTCbosPfCs0QTFtSO/4rvqkc0BRYMxRJD8PVLvKhUKV0XXdQYnJ7
	fwbfr399fTfuuLvSbr/qJ2zGQX4BfRAevgEuwahOhFJmtwaJbdrSAPLnGNJLOUHb3II
	gcAWQtkl+8/DuFO0Zxj6lXF8/s4JIoRfYx4CVdSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652163539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eWFnP6Erc4MZNprZwRn5v48sSuZ2FlucUqxHLkJ0sFo=;
	b=AxwKwd06sTjkvbKGtKlpdqDKcTogGVhvAWW0LyUhEyHPoE1Uf7jx1Vskju58prv1
	3T35S2kEa+PYXVEe7/FLKdoWmz2kUeZmXZUcr2GzyZuXsM1CxLF8JqbQgxeuMB/ExEs
	0mgaPj8KDwRZRL6Dif+q842X6Pk42u72PETuyro4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ac9ef18a-a0e206a9-2803-4bda-ade9-bc517dc48812-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebe1fb4d27a9eaa6b4501107fd3426b585a9e665c5f3e839a334e178479ef7ba
Date: Tue, 10 May 2022 06:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652163539
