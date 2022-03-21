Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F11C36F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647905484;
	h=To:Subject:From:Message-Id:Date;
	bh=RJktQPnnWikVaPFvmPhzoEox/KCmlFx/YhGN3J7PTBU=;
	b=maDvGcxYHK1zE0K1QDYe8BCduBSoXBFTw7dytISCbRZWz1Gft3qDlpArhC4cRPg9
	EJyl7I/hkb8DVpJs2i/HlipjnfNjiFSE0XhAixPlI0hi4GSV2bvWWxgCMfruWvp3nT8
	ye8DZro08yLiA2P42zyTC4RrvBJWSy4aEdgYk4Jc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647905484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RJktQPnnWikVaPFvmPhzoEox/KCmlFx/YhGN3J7PTBU=;
	b=J5kYBzXXyepQbB24FrbawQtiAk9+IS7u96759nz/T1wjHKxCfh/4VK8WvyovIcK0
	i9Txtv5Z4Hwo3SXiLdC6aXzxKauEnL8+7927Ki9gEux+K88ZdSlT3rLtcxiV355csGc
	BshYVeqp9hB0j1g+yys4sajr8inRRO98SIhTvu+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faed23009-3521e850-2785-4951-81ea-58b9c214ed19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2435530996b9ba4e1b47f2f7ca5d102acd157096b2ba4bcaf97d4dedcfe8fc8
Date: Mon, 21 Mar 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647905484
