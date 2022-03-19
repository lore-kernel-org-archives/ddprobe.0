Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925707A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647661584;
	h=To:Subject:From:Message-Id:Date;
	bh=l178c07FoS7d089cNbMhd7/tDQnwHFE0kDMqKdBLKQw=;
	b=ZPddBE+4pnDmm3WR58a/vhIQEa4z3UUcOMbXnhrAmrMNbzMzsjU2TIl+ILBAm2Bq
	tW5gLDN4B39tjO64XPtrTdIaRZgR1lMmk2X0ps16hRn/x54CdfeBbE82kA+OAo0CTIt
	zBa9sRJTXjkWoMAnkArfcAkrc4zK8vD7+zj/zDAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647661584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l178c07FoS7d089cNbMhd7/tDQnwHFE0kDMqKdBLKQw=;
	b=PMfHJWDZV5QTCrCv3yXqEh3xvohuznB4cVXZBDGn/ug6NCW54ckipWiMCgdjMDJ8
	CqjYYGuB9zCzcB+otzC6L9hO/k6X/JY5kzjB3q5kiPdYkaZzOSq+3jIY99M3AKnu2iG
	toQywNJjRxmnuBccV1VFf68NpNG642nzJic0PiJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0489183-39bbb7db-a8d0-4bbe-bcda-15bb07f38553-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: beb41cd7cd0806956f399b7344be442d3862b1fea4ffbda45580c55e8ecc5ed3
Date: Sat, 19 Mar 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647661584
